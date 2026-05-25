# Factor Weave alert webhooks

Drop-in receivers + transformers for Factor Weave's alert webhook delivery.

When you create an alert rule with a `delivery_url`, the [nightly evaluator](https://github.com/Blazing-Customs/factorweave-tools/tree/main/) POSTs a JSON digest of every matching ticker to that URL once per UTC day (after the bundle refresh). This directory ships:

- The **exact payload shape** Factor Weave sends — [`sample-payload.json`](./sample-payload.json)
- **Receiver setup guides** for Slack, Discord, Zapier, Make, and n8n — [`templates/`](./templates/)
- **Transformer scripts** that take the Factor Weave payload and emit the format Slack / Discord expect — [`transformers/`](./transformers/)
- A **test-fire script** so you can verify your endpoint receives correctly before pointing the alert rule at it — [`scripts/`](./scripts/)

## Quick start — Slack

1. Get a [Slack incoming webhook URL](https://api.slack.com/messaging/webhooks).
2. Deploy [`transformers/slack.py`](./transformers/slack.py) as a serverless function (AWS Lambda + API Gateway, Vercel function, Cloudflare Worker, etc.). It accepts the Factor Weave payload, transforms it, and POSTs to your Slack URL.
3. Set the rule's `delivery_url` to your function URL.

## Quick start — Discord, Zapier, Make, n8n

See the per-receiver guides in [`templates/`](./templates/).

## Quick start — straight curl test

Wire any URL (Slack/Discord/Zapier/your own) into a Factor Weave alert rule, then test it works *before* the next nightly run fires:

```bash
bash sdk/webhooks/scripts/fire-test-payload.sh https://your-webhook-url-here
```

## The payload shape

```json
{
  "source": "factorweave",
  "rule": {
    "id": 17,
    "name": "RSI overbought",
    "indicator": "rsi",
    "condition": ">",
    "value": 70
  },
  "as_of": "2026-05-22",
  "count": 23,
  "truncated": false,
  "matches": [
    { "ticker": "NVDA", "value": 88.3 },
    { "ticker": "AAPL", "value": 82.1 },
    ...
  ]
}
```

Key fields:

- `source` — always `"factorweave"`. Use this to distinguish from other webhooks if you multiplex receivers.
- `rule` — your rule's id, name, indicator, comparison operator, threshold.
- `as_of` — the UTC trading date the matches are computed against (the latest bundle date).
- `count` / `truncated` / `matches` — every ticker that satisfied the rule on `as_of`. Capped at `MAX_MATCHES` (currently 50) with `truncated: true` if the underlying set was larger.
- Each `matches[i]` contains `ticker` + `value` (the value of `indicator` on `as_of`) plus whatever other factor columns Factor Weave includes.

## License

MIT.
