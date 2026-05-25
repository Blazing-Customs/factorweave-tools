"""Transform a Factor Weave alert payload into a nicely-formatted Slack message.

Deploy this anywhere that exposes an HTTPS endpoint (AWS Lambda + API Gateway,
Vercel Function, Cloudflare Worker, fly.io, even a tiny Flask app on Render).
Point Factor Weave's alert rule `delivery_url` at the deployed endpoint;
this script transforms the incoming payload and POSTs to your Slack
incoming-webhook URL.

Environment variables:
    SLACK_WEBHOOK_URL  — your Slack incoming-webhook URL (required)

Example (Flask):
    from flask import Flask, request
    app = Flask(__name__)
    @app.post("/alerts/factorweave")
    def receive():
        post_to_slack(request.get_json())
        return ("", 204)

Example (AWS Lambda + API Gateway):
    def handler(event, context):
        import json
        post_to_slack(json.loads(event["body"]))
        return {"statusCode": 204}

Tested standalone:
    python slack.py < sample-payload.json
"""
from __future__ import annotations
import json
import os
import sys
import urllib.error
import urllib.request
from typing import Any, Dict, List


MAX_INLINE_MATCHES = 10  # rest go in a thread reply / spillover line


def build_slack_blocks(payload: Dict[str, Any]) -> Dict[str, Any]:
    """Convert a Factor Weave webhook payload into Slack Block Kit JSON."""
    rule = payload.get("rule") or {}
    matches: List[Dict[str, Any]] = payload.get("matches") or []
    count = payload.get("count", len(matches))
    as_of = payload.get("as_of", "—")
    truncated = bool(payload.get("truncated"))

    rule_name = rule.get("name", "(unnamed rule)")
    indicator = rule.get("indicator", "?")
    condition = rule.get("condition", "?")
    threshold = rule.get("value", "?")

    header = f":factorweave: *{rule_name}* — {count} ticker{'s' if count != 1 else ''} match{'es' if count == 1 else ''}"
    context = f"`{indicator} {condition} {threshold}` · _as of {as_of}_"

    if not matches:
        body = "_(no matches)_"
    else:
        rows = matches[:MAX_INLINE_MATCHES]
        body_lines = [f"• *{m['ticker']}* — {indicator}={_fmt(m.get('value'))}" for m in rows]
        body = "\n".join(body_lines)
        if len(matches) > MAX_INLINE_MATCHES or truncated:
            spillover = len(matches) - MAX_INLINE_MATCHES if len(matches) > MAX_INLINE_MATCHES else 0
            extra = f"_… and {spillover} more_" if spillover else ""
            trunc_note = " _(truncated at platform cap)_" if truncated else ""
            body = f"{body}\n{extra}{trunc_note}".strip()

    return {
        "blocks": [
            {"type": "section", "text": {"type": "mrkdwn", "text": header}},
            {"type": "context", "elements": [{"type": "mrkdwn", "text": context}]},
            {"type": "section", "text": {"type": "mrkdwn", "text": body}},
            {"type": "context", "elements": [
                {"type": "mrkdwn", "text": "<https://factorweave.com/|Factor Weave>"}
            ]},
        ]
    }


def _fmt(v: Any) -> str:
    if v is None:
        return "—"
    if isinstance(v, float):
        return f"{v:.2f}" if abs(v) < 1000 else f"{v:.1f}"
    return str(v)


def post_to_slack(payload: Dict[str, Any], slack_url: str | None = None) -> int:
    """Transform + POST. Returns the HTTP status code from Slack."""
    slack_url = slack_url or os.environ.get("SLACK_WEBHOOK_URL")
    if not slack_url:
        raise RuntimeError("SLACK_WEBHOOK_URL not set")
    blocks = build_slack_blocks(payload)
    req = urllib.request.Request(
        slack_url,
        data=json.dumps(blocks).encode("utf-8"),
        headers={"Content-Type": "application/json", "User-Agent": "factorweave-slack-transformer/1.0"},
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return resp.status
    except urllib.error.HTTPError as e:
        return e.code


if __name__ == "__main__":
    payload = json.load(sys.stdin)
    blocks = build_slack_blocks(payload)
    json.dump(blocks, sys.stdout, indent=2)
    sys.stdout.write("\n")
