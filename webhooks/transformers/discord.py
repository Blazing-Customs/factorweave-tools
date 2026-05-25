"""Transform a Factor Weave alert payload into a Discord embed message.

See slack.py for deployment patterns. Discord incoming webhooks accept a
`content` string and/or `embeds` array.

Environment variables:
    DISCORD_WEBHOOK_URL  — your Discord webhook URL

Tested standalone:
    python discord.py < sample-payload.json
"""
from __future__ import annotations
import json
import os
import sys
import urllib.error
import urllib.request
from typing import Any, Dict, List


MAX_INLINE_MATCHES = 10
DISCORD_EMBED_COLOR = 0x0D9488  # Factor Weave teal


def build_discord_message(payload: Dict[str, Any]) -> Dict[str, Any]:
    rule = payload.get("rule") or {}
    matches: List[Dict[str, Any]] = payload.get("matches") or []
    count = payload.get("count", len(matches))
    as_of = payload.get("as_of", "—")
    truncated = bool(payload.get("truncated"))

    rule_name = rule.get("name", "(unnamed rule)")
    indicator = rule.get("indicator", "?")
    condition = rule.get("condition", "?")
    threshold = rule.get("value", "?")

    if not matches:
        description = "_(no matches)_"
    else:
        rows = matches[:MAX_INLINE_MATCHES]
        lines = [f"• **{m['ticker']}** — {indicator}=`{_fmt(m.get('value'))}`" for m in rows]
        description = "\n".join(lines)
        if len(matches) > MAX_INLINE_MATCHES or truncated:
            spillover = len(matches) - MAX_INLINE_MATCHES if len(matches) > MAX_INLINE_MATCHES else 0
            extra = f"\n_… and {spillover} more_" if spillover else ""
            trunc_note = " _(truncated at platform cap)_" if truncated else ""
            description = f"{description}{extra}{trunc_note}"

    return {
        "embeds": [
            {
                "title": f"{rule_name} — {count} ticker{'s' if count != 1 else ''}",
                "description": description,
                "color": DISCORD_EMBED_COLOR,
                "fields": [
                    {"name": "Rule",  "value": f"`{indicator} {condition} {threshold}`", "inline": True},
                    {"name": "As of", "value": as_of, "inline": True},
                ],
                "footer": {"text": "Factor Weave · factorweave.com"},
                "timestamp": f"{as_of}T00:00:00Z" if as_of != "—" else None,
            }
        ]
    }


def _fmt(v: Any) -> str:
    if v is None:
        return "—"
    if isinstance(v, float):
        return f"{v:.2f}" if abs(v) < 1000 else f"{v:.1f}"
    return str(v)


def post_to_discord(payload: Dict[str, Any], discord_url: str | None = None) -> int:
    discord_url = discord_url or os.environ.get("DISCORD_WEBHOOK_URL")
    if not discord_url:
        raise RuntimeError("DISCORD_WEBHOOK_URL not set")
    msg = build_discord_message(payload)
    req = urllib.request.Request(
        discord_url,
        data=json.dumps(msg).encode("utf-8"),
        headers={"Content-Type": "application/json", "User-Agent": "factorweave-discord-transformer/1.0"},
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status
    except urllib.error.HTTPError as e:
        return e.code


if __name__ == "__main__":
    payload = json.load(sys.stdin)
    msg = build_discord_message(payload)
    json.dump(msg, sys.stdout, indent=2)
    sys.stdout.write("\n")
