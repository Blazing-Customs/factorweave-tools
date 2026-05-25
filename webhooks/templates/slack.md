# Slack delivery

Slack's [incoming webhook](https://api.slack.com/messaging/webhooks) format isn't the same as Factor Weave's payload, so you need a tiny transformer step.

## Option A — host the transformer yourself (recommended)

Deploy [`transformers/slack.py`](../transformers/slack.py) as a serverless function. Three quick paths:

### AWS Lambda + API Gateway

```bash
# bundle
zip -r fw-slack.zip transformers/slack.py
aws lambda create-function \
  --function-name fw-slack \
  --runtime python3.11 \
  --handler transformers.slack.lambda_handler \
  --role arn:aws:iam::ACCOUNT:role/lambda-basic \
  --environment "Variables={SLACK_WEBHOOK_URL=https://hooks.slack.com/...}" \
  --zip-file fileb://fw-slack.zip
# then expose via API Gateway HTTP API → point the rule's delivery_url at it
```

### Vercel Function (one file, zero infra)

`api/fw-slack.py` in a Vercel project — copy `transformers/slack.py` body into a `handler(request)` function. Set `SLACK_WEBHOOK_URL` in project env. The deploy URL becomes your `delivery_url`.

### Cloudflare Worker (TypeScript port)

Port the transformer to TS (see [`../transformers/slack.py`](../transformers/slack.py) as the algorithm reference). The blocks-format JSON is identical. Bind `SLACK_WEBHOOK_URL` as a secret.

## Option B — use Zapier / Make as the transformer

If you don't want to host code:

1. Zapier: **Webhook by Zapier** trigger (Catch Hook) → **Slack** action (Send Channel Message). Map `rule.name` → message, iterate `matches[]` for the body. See [zapier.md](./zapier.md).
2. Make.com: same flow. See [make.md](./make.md).

## Option C — send raw JSON to Slack

Slack incoming webhooks technically accept any JSON. If you point Factor Weave directly at your Slack hook, the message lands as raw JSON in the channel — readable for debugging, ugly for daily use. Use it only to confirm wiring; then move to A or B.

## Test it

Once wired:

```bash
bash sdk/webhooks/scripts/fire-test-payload.sh https://your-endpoint
```

The sample payload should appear in your Slack channel within a few seconds.
