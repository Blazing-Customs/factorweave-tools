"""Factor Weave command-line interface.

Installed as the ``fw`` console script when you ``pip install factorweave``.
Reads ``FACTORWEAVE_API_KEY`` from the environment by default; override with
``--api-key`` on any command.

Examples:
    fw features AAPL
    fw features AAPL --start 2024-01-01 --end 2024-12-31
    fw top mom -n 25
    fw similar AAPL --method cosine --limit 10
    fw market-context
    fw report-card AAPL
    fw risk-cluster TSLA
    fw embedding NVDA --dim 32

All commands honor ``--json`` for raw JSON output (useful in pipes); the
default is a friendlier compact table.
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from typing import Any, Dict, List, Optional, Sequence

from . import __version__
from .client import Client
from .errors import (
    AuthError, FactorWeaveError, NotFoundError, RateLimitError, ServerError, TierError,
)


# ----------------------------- formatting -----------------------------

def _table(rows: List[Dict[str, Any]], cols: Optional[List[str]] = None, max_rows: int = 50) -> str:
    if not rows:
        return "(no rows)"
    if cols is None:
        first = rows[0]
        cols = list(first.keys())[:8]
    rows = rows[:max_rows]
    widths = {c: max(len(c), *(len(_fmt(r.get(c))) for r in rows)) for c in cols}
    out: List[str] = []
    out.append("  ".join(c.ljust(widths[c]) for c in cols))
    out.append("  ".join("-" * widths[c] for c in cols))
    for r in rows:
        out.append("  ".join(_fmt(r.get(c)).ljust(widths[c]) for c in cols))
    if len(rows) == max_rows:
        out.append(f"... (truncated at {max_rows} rows; use --json for the full set)")
    return "\n".join(out)


def _fmt(v: Any) -> str:
    if v is None:
        return ""
    if isinstance(v, float):
        return f"{v:.4f}" if abs(v) < 1000 else f"{v:.2f}"
    return str(v)


def _emit(result: Any, as_json: bool, table_cols: Optional[List[str]] = None) -> None:
    if as_json:
        json.dump(result, sys.stdout, indent=2, default=str)
        sys.stdout.write("\n")
        return
    if isinstance(result, list):
        sys.stdout.write(_table(result, cols=table_cols) + "\n")
    elif isinstance(result, dict):
        # Compact two-column key/value table for single objects
        rows = result.get("rows") or result.get("neighbors")
        if isinstance(rows, list) and rows:
            sys.stdout.write(_table(rows, cols=table_cols) + "\n")
            return
        # Drop bulky vector fields from the default rendering
        if "vector" in result and isinstance(result["vector"], list):
            v = result["vector"]
            result = {**result, "vector": f"[{', '.join(f'{x:.4f}' for x in v[:6])} ...]  ({len(v)} dims)"}
        for k, v in result.items():
            sys.stdout.write(f"{k:24} {_fmt(v)}\n")
    else:
        sys.stdout.write(f"{result}\n")


# ----------------------------- client wiring -----------------------------

_PUBLIC_CMDS = {"health", "manifest"}


def _make_client(args: argparse.Namespace) -> Client:
    key = args.api_key or os.environ.get("FACTORWEAVE_API_KEY")
    if not key and not args.token and args.cmd not in _PUBLIC_CMDS:
        sys.stderr.write(
            "error: no API key. Set FACTORWEAVE_API_KEY or pass --api-key.\n"
            "       (Mint one on https://factorweave.com/ → Profile → API Access.)\n"
        )
        sys.exit(2)
    return Client(api_key=key, token=args.token, base_url=args.base_url)


def _run(args: argparse.Namespace, fn) -> None:
    try:
        result = fn(_make_client(args))
    except AuthError as e:
        sys.stderr.write(f"auth error: {e}\n")
        sys.exit(2)
    except TierError as e:
        sys.stderr.write(f"tier error (upgrade needed): {e}\n")
        sys.exit(3)
    except NotFoundError as e:
        sys.stderr.write(f"not found: {e}\n")
        sys.exit(4)
    except RateLimitError as e:
        sys.stderr.write(f"rate limited: {e}\n")
        sys.exit(5)
    except ServerError as e:
        sys.stderr.write(f"server error: {e}\n")
        sys.exit(6)
    except FactorWeaveError as e:
        sys.stderr.write(f"error: {e}\n")
        sys.exit(1)

    if hasattr(result, "to_list"):
        result = result.to_list()
    _emit(result, args.json, table_cols=_default_cols_for(args.cmd))


_DEFAULT_COLS = {
    "features": ["ticker", "date", "rsi", "mom", "vol_real_20d", "comp_score", "q_comp_score"],
    "top":      ["ticker", "date", "rsi", "mom", "comp_score", "q_comp_score"],
    "similar":  ["ticker", "date", "distance"],
    "labels":   ["date", "fwd_ret_1d", "fwd_ret_5d", "fwd_ret_20d"],
    "alerts":   ["id", "name", "indicator", "condition", "value"],
}

def _default_cols_for(cmd: str) -> Optional[List[str]]:
    return _DEFAULT_COLS.get(cmd)


# ----------------------------- parser -----------------------------

def _add_global(p: argparse.ArgumentParser) -> None:
    p.add_argument("--api-key", help="fw_live_… key. Defaults to $FACTORWEAVE_API_KEY.")
    p.add_argument("--token", help="JWT bearer token (alternative to --api-key).")
    p.add_argument("--base-url", default="https://factorweave.com/api", help="API base URL.")
    p.add_argument("--json", action="store_true", help="Emit raw JSON instead of a table.")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        prog="fw",
        description="Factor Weave CLI — quant-factor data, similarity search, derived analytics, MCP.",
    )
    parser.add_argument("--version", action="version", version=f"factorweave {__version__}")
    sub = parser.add_subparsers(dest="cmd", required=True, metavar="COMMAND")

    p_feat = sub.add_parser("features", help="Per-ticker factor row(s).")
    p_feat.add_argument("ticker")
    p_feat.add_argument("--date")
    p_feat.add_argument("--start")
    p_feat.add_argument("--end")
    _add_global(p_feat)

    p_top = sub.add_parser("top", help="Top-N tickers by a factor.")
    p_top.add_argument("factor")
    p_top.add_argument("-n", "--n", type=int, default=25)
    p_top.add_argument("--direction", default="desc", choices=["desc", "asc"])
    _add_global(p_top)

    p_sim = sub.add_parser("similar", help="Find factor-similar tickers.")
    p_sim.add_argument("ticker")
    p_sim.add_argument("--method", default="cosine", choices=["cosine", "dtw", "label_aware", "supervised"])
    p_sim.add_argument("--limit", type=int, default=10)
    p_sim.add_argument("--min-lookback-days", type=int, default=30)
    _add_global(p_sim)

    p_lab = sub.add_parser("labels", help="Forward-return labels (PRO+).")
    p_lab.add_argument("ticker")
    _add_global(p_lab)

    p_mc = sub.add_parser("market-context", help="Whole-universe analytics.")
    p_mc.add_argument("--history", action="store_true", help="HOBBY+: full history.")
    _add_global(p_mc)

    p_rc = sub.add_parser("report-card", help="Per-ticker digest (HOBBY+).")
    p_rc.add_argument("ticker")
    _add_global(p_rc)

    p_risk = sub.add_parser("risk-cluster", help="Per-ticker risk regime (PRO+).")
    p_risk.add_argument("ticker")
    _add_global(p_risk)

    p_emb = sub.add_parser("embedding", help="Per-ticker 32-D factor-state embedding (QUANT).")
    p_emb.add_argument("ticker")
    _add_global(p_emb)

    p_alerts = sub.add_parser("alerts", help="List your alert rules.")
    _add_global(p_alerts)

    p_usage = sub.add_parser("usage", help="Today + month-to-date + quota.")
    _add_global(p_usage)

    p_me = sub.add_parser("me", help="Current authenticated user + tier.")
    _add_global(p_me)

    p_manifest = sub.add_parser("manifest", help="Public bundle manifest (no auth).")
    _add_global(p_manifest)

    p_health = sub.add_parser("health", help="Public liveness probe (no auth).")
    _add_global(p_health)

    return parser


# ----------------------------- dispatch -----------------------------

def main(argv: Optional[Sequence[str]] = None) -> None:
    parser = build_parser()
    args = parser.parse_args(argv)

    if args.cmd == "features":
        _run(args, lambda c: c.features(args.ticker, date=args.date, start=args.start, end=args.end))
    elif args.cmd == "top":
        _run(args, lambda c: c.top(args.factor, n=args.n, direction=args.direction))
    elif args.cmd == "similar":
        _run(args, lambda c: c.find_similar(
            args.ticker, method=args.method, limit=args.limit, min_lookback_days=args.min_lookback_days,
        ))
    elif args.cmd == "labels":
        _run(args, lambda c: c.labels(args.ticker))
    elif args.cmd == "market-context":
        _run(args, lambda c: c.market_context(history=args.history))
    elif args.cmd == "report-card":
        _run(args, lambda c: c.report_card(args.ticker))
    elif args.cmd == "risk-cluster":
        _run(args, lambda c: c.risk_cluster(args.ticker))
    elif args.cmd == "embedding":
        _run(args, lambda c: c.embedding(args.ticker))
    elif args.cmd == "alerts":
        _run(args, lambda c: c.alerts())
    elif args.cmd == "usage":
        _run(args, lambda c: c.usage())
    elif args.cmd == "me":
        _run(args, lambda c: c.me())
    elif args.cmd == "manifest":
        _run(args, lambda c: c.manifest())
    elif args.cmd == "health":
        _run(args, lambda c: c.health())
    else:  # pragma: no cover
        parser.print_help()
        sys.exit(2)


if __name__ == "__main__":
    main()
