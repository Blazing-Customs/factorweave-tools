"""Synchronous Factor Weave client.

Thin requests-based wrapper. Each public method maps to one endpoint on
factorweave.com/api. Errors map to typed exceptions (see errors.py); list-
returning methods wrap in a Rows() object with optional pandas/polars
adapters.
"""
from __future__ import annotations
from typing import Any, Dict, Iterable, List, Optional, Union

import requests

from .errors import (
    AuthError, FactorWeaveError, NotFoundError,
    RateLimitError, ServerError, TierError,
)
from .results import Rows


_DEFAULT_BASE = "https://factorweave.com/api"
_DEFAULT_TIMEOUT = 30  # seconds


class Client:
    """Factor Weave API client.

    Authenticate with EITHER a long-lived dev key (preferred for scripts):

    >>> client = Client(api_key="fw_live_...")

    OR a JWT obtained from POST /auth/login:

    >>> client = Client(token="<jwt>")
    >>> # or:
    >>> client = Client(); client.login("you@example.com", "...")
    """

    def __init__(
        self,
        api_key: Optional[str] = None,
        token: Optional[str] = None,
        base_url: str = _DEFAULT_BASE,
        timeout: int = _DEFAULT_TIMEOUT,
        session: Optional[requests.Session] = None,
    ) -> None:
        self.base_url = base_url.rstrip("/")
        self.timeout = timeout
        self._session = session or requests.Session()
        self._api_key = api_key
        self._token = token

    # ---- auth helpers ----

    def login(self, email: str, password: str) -> Dict[str, Any]:
        """Exchange email + password for a JWT and cache it on the client."""
        data = self._request("POST", "/auth/login", json={"email": email, "password": password}, _auth=False)
        self._token = data.get("access_token")
        return data

    def me(self) -> Dict[str, Any]:
        """Current authenticated user + tier + daily usage."""
        return self._request("GET", "/auth/me")

    # ---- data ----

    def features(
        self,
        ticker: str,
        date: Optional[str] = None,
        start: Optional[str] = None,
        end: Optional[str] = None,
    ) -> Rows:
        """Per-ticker factor row(s). No date args → latest single row.
        ?date= → that exact day. ?start_date= & ?end_date= → range. History
        is the last 252 trading days."""
        params: Dict[str, Any] = {}
        if date:  params["date"] = date
        if start: params["start_date"] = start
        if end:   params["end_date"] = end
        data = self._request("GET", f"/features/{ticker.upper()}", params=params)
        if isinstance(data, list):
            return Rows.of(data)
        return Rows.of(data.get("rows", []))

    def top(self, factor: str, n: int = 25, direction: str = "desc") -> Rows:
        """Top-N tickers ranked by a factor on the latest date."""
        data = self._request("GET", "/top", params={"factor": factor, "n": n, "direction": direction})
        return Rows.of(data.get("rows", []))

    # ---- vector search ----

    def find_similar(
        self,
        ticker: str,
        method: str = "cosine",
        limit: int = 50,
        min_lookback_days: int = 30,
    ) -> Dict[str, Any]:
        """Top-K factor-similar setups. method ∈ cosine / dtw (HOBBY+) /
        label_aware (PRO+) / supervised (QUANT). min_lookback_days=30
        filters same-day co-moving ETFs out of the top hits."""
        return self._request(
            "GET", f"/vector-search/similar/{ticker.upper()}",
            params={"method": method, "limit": limit, "min_lookback_days": min_lookback_days},
        )

    # ---- labels (PRO+) ----

    def labels(self, ticker: str) -> Dict[str, Any]:
        """Forward-return labels (1d/5d/20d) + binary targets. PRO+."""
        return self._request("GET", f"/labels/{ticker.upper()}")

    # ---- derived analytics ----

    def market_context(self, history: bool = False) -> Dict[str, Any]:
        """Whole-universe analytics — dispersion / breadth / regime.
        FREE = today only; HOBBY+ = 252-day history (history=True)."""
        params = {} if history else {"latest": 1}
        return self._request("GET", "/market-context", params=params)

    def report_card(self, ticker: str) -> Dict[str, Any]:
        """Per-ticker digest: snapshot, percentile ranks, risk cluster,
        regime, unusualness score. HOBBY+; risk-cluster block requires PRO."""
        return self._request("GET", f"/report-card/{ticker.upper()}")

    def risk_cluster(self, ticker: str) -> Dict[str, Any]:
        """Volatility regime a ticker's factor analogues landed in
        (calm / normal / stressed). PRO+."""
        return self._request("GET", f"/risk-cluster/{ticker.upper()}")

    def embedding(self, ticker: str) -> Dict[str, Any]:
        """Raw 32-D regime-aware factor-state embedding vector. QUANT."""
        return self._request("GET", f"/embedding/{ticker.upper()}")

    # ---- alerts ----

    def alerts(self) -> Rows:
        """List your alert rules."""
        data = self._request("GET", "/alerts/rules")
        return Rows.of(data if isinstance(data, list) else data.get("rules", []))

    def create_alert(
        self, name: str, indicator: str, condition: str, value: float,
        description: Optional[str] = None,
    ) -> Dict[str, Any]:
        body: Dict[str, Any] = {
            "name": name, "indicator": indicator,
            "condition": condition, "value": value,
        }
        if description:
            body["description"] = description
        return self._request("POST", "/alerts/rules", json=body)

    def delete_alert(self, rule_id: int) -> None:
        self._request("DELETE", f"/alerts/rules/{int(rule_id)}", _expect_body=False)

    # ---- usage ----

    def usage(self) -> Dict[str, Any]:
        """Today + month-to-date + quota reset time."""
        return self._request("GET", "/usage")

    def recent_activity(self) -> Rows:
        """Your last 50 API calls with status codes."""
        data = self._request("GET", "/recent-activity")
        return Rows.of(data.get("activities", []))

    # ---- public ----

    def health(self) -> Dict[str, Any]:
        return self._request("GET", "/health", _auth=False)

    def status(self) -> Dict[str, Any]:
        return self._request("GET", "/status", _auth=False)

    def manifest(self) -> Dict[str, Any]:
        return self._request("GET", "/manifest", _auth=False)

    # ---- internals ----

    def _headers(self, authed: bool = True) -> Dict[str, str]:
        h = {"Accept": "application/json", "User-Agent": "factorweave-python/0.2.0"}
        if not authed:
            return h
        if self._api_key:
            h["X-API-Key"] = self._api_key
        elif self._token:
            h["Authorization"] = f"Bearer {self._token}"
        return h

    def _request(
        self, method: str, path: str, *,
        params: Optional[Dict[str, Any]] = None,
        json: Optional[Dict[str, Any]] = None,
        _auth: bool = True,
        _expect_body: bool = True,
    ) -> Any:
        url = f"{self.base_url}{path}"
        try:
            r = self._session.request(
                method, url,
                params=params, json=json,
                headers=self._headers(authed=_auth),
                timeout=self.timeout,
            )
        except requests.RequestException as e:
            raise FactorWeaveError(f"network error: {e}") from e

        if 200 <= r.status_code < 300:
            if not _expect_body or not r.content:
                return None
            ct = r.headers.get("Content-Type", "")
            if "application/json" in ct:
                return r.json()
            return r.text

        # Error path — surface typed exceptions.
        try:
            body = r.json() if "application/json" in r.headers.get("Content-Type", "") else {}
        except ValueError:
            body = {}
        detail = (body or {}).get("detail", r.text or f"HTTP {r.status_code}")
        common = dict(status_code=r.status_code, detail=detail, payload=body)

        if r.status_code == 401:
            raise AuthError(detail, **common)
        if r.status_code == 403:
            raise TierError(
                detail,
                required_tier=(body or {}).get("required_tier"),
                your_tier=(body or {}).get("your_tier"),
                **common,
            )
        if r.status_code == 404:
            raise NotFoundError(detail, **common)
        if r.status_code == 429:
            raise RateLimitError(detail, **common)
        if r.status_code >= 500:
            raise ServerError(detail, **common)
        raise FactorWeaveError(detail, **common)
