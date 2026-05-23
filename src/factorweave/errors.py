"""Typed exceptions mirroring the API's status codes."""
from __future__ import annotations
from typing import Optional


class FactorWeaveError(Exception):
    """Base — every API failure raises a subclass of this."""

    def __init__(self, message: str, *, status_code: Optional[int] = None,
                 detail: Optional[str] = None, payload: Optional[dict] = None) -> None:
        super().__init__(message)
        self.status_code = status_code
        self.detail = detail or message
        self.payload = payload or {}


class AuthError(FactorWeaveError):
    """401 — missing or invalid credentials."""


class TierError(FactorWeaveError):
    """403 — current tier does not cover this endpoint.

    Carries `required_tier` and `your_tier` when the server provides them.
    """

    def __init__(self, *args, required_tier: Optional[str] = None,
                 your_tier: Optional[str] = None, **kwargs) -> None:
        super().__init__(*args, **kwargs)
        self.required_tier = required_tier
        self.your_tier = your_tier


class NotFoundError(FactorWeaveError):
    """404 — ticker or resource not present."""


class RateLimitError(FactorWeaveError):
    """429 — daily quota exhausted (or per-endpoint throttle)."""


class ServerError(FactorWeaveError):
    """5xx — backend trouble. Worth retrying with backoff."""
