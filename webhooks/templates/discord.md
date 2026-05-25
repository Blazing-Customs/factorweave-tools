# Discord delivery

Discord [incoming webhooks](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks) accept an `embeds` array but not Factor Weave's native shape, so you need a transformer.

## Option A — host the transformer yourself

Deploy [`transformers/discord.py`](../transformers/discord.py) the same way as the Slack transformer — Lambda, Vercel, Cloudflare Worker, anywhere with HTTPS. Set the `DISCORD_WEBHOOK_URL` env var. Point the alert rule's `delivery_url` at the deployed function.

## Option B — Zapier / Make

1. Zapier: **Catch Hook** → **Discord** action (Send Channel Message). Map `rule.name` → title, iterate `matches[]` for the description.
2. Make: same.

## Option C — fan out via [`transformers/generic_lambda.py`](../transformers/generic_lambda.py)

The bundled `generic_lambda.py` handles both Slack and Discord in one Lambda. Set both `SLACK_WEBHOOK_URL` and `DISCORD_WEBHOOK_URL`; one webhook URL fans out to both channels.

## Test it

```bash
bash sdk/webhooks/scripts/fire-test-payload.sh https://your-endpoint
```

You should see a teal-bordered embed with the matched tickers in your Discord channel.
