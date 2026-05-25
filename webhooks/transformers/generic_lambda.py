"""AWS Lambda handler — receives Factor Weave webhook, fans out to Slack + Discord.

Deploy as a Python Lambda behind API Gateway. Point the rule's `delivery_url`
at the API Gateway URL. The function transforms the payload via the bundled
transformer modules and POSTs to whichever receivers you've configured via
environment variables.

Environment variables (set whichever you want to enable):
    SLACK_WEBHOOK_URL    — if set, fan out to Slack
    DISCORD_WEBHOOK_URL  — if set, fan out to Discord
    SHARED_SECRET        — optional; if set, FW payloads must include matching
                           ?secret=… query param (poor-man's auth)

Returns 204 on success, 4xx on validation failure, 5xx on transformer errors.
"""
from __future__ import annotations
import json
import os
from typing import Any, Dict

# Co-located in the same Lambda deployment package
from . import slack as slack_transformer
from . import discord as discord_transformer


def lambda_handler(event: Dict[str, Any], context: Any) -> Dict[str, Any]:
    qs = event.get("queryStringParameters") or {}
    shared = os.environ.get("SHARED_SECRET")
    if shared and qs.get("secret") != shared:
        return _resp(401, {"error": "bad secret"})

    body = event.get("body")
    if not body:
        return _resp(400, {"error": "no body"})
    try:
        payload = json.loads(body)
    except json.JSONDecodeError:
        return _resp(400, {"error": "invalid JSON"})

    if payload.get("source") != "factorweave":
        return _resp(400, {"error": "not a factorweave payload"})

    delivered = []
    errors = []

    if os.environ.get("SLACK_WEBHOOK_URL"):
        try:
            slack_transformer.post_to_slack(payload)
            delivered.append("slack")
        except Exception as e:
            errors.append({"target": "slack", "error": str(e)})

    if os.environ.get("DISCORD_WEBHOOK_URL"):
        try:
            discord_transformer.post_to_discord(payload)
            delivered.append("discord")
        except Exception as e:
            errors.append({"target": "discord", "error": str(e)})

    if errors:
        return _resp(207, {"delivered": delivered, "errors": errors})
    return _resp(204, None)


def _resp(status: int, body: Dict[str, Any] | None) -> Dict[str, Any]:
    return {
        "statusCode": status,
        "body": json.dumps(body) if body is not None else "",
        "headers": {"Content-Type": "application/json"},
    }
