# Make.com setup

Same idea as Zapier, often cheaper for high-volume routing.

## Steps

1. Sign in to [Make](https://www.make.com/).
2. **Create scenario** → add module **Webhooks → Custom webhook**.
3. Click **Add** → name it `factorweave-alerts` → copy the generated URL.
4. Set the alert rule's `delivery_url` to that URL.
5. Test:
   ```bash
   bash sdk/webhooks/scripts/fire-test-payload.sh <your-make-webhook-url>
   ```
   Click **Re-determine data structure** in Make so it sees the sample payload schema.
6. Add the next module — Slack, Discord, Gmail, Google Sheets, Linear, anything Make supports.

Make supports iterating `matches[]` natively (Iterator module) — useful for one-message-per-ticker workflows.

## Why pick Make over Zapier

- 1000 free ops/month vs Zapier's 100 tasks
- Native iterators + aggregators (more flexible)
- Visual debugger (helpful for getting the field-mapping right the first time)

Zapier wins on ecosystem breadth + recognized brand if you're sharing the integration with non-technical teammates.
