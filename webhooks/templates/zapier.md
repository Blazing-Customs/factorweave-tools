# Zapier setup

No-code path. ~5 minutes.

## Steps

1. Sign in to [Zapier](https://zapier.com/).
2. **Create Zap** → trigger: **Webhooks by Zapier** → **Catch Hook**.
3. Copy the generated URL — this is your `delivery_url` to set on the Factor Weave alert rule.
4. Test the trigger:
   ```bash
   bash sdk/webhooks/scripts/fire-test-payload.sh <your-catch-hook-url>
   ```
   Back in Zapier, click **Test trigger** — it should detect the sample payload.
5. Add an action — whichever destination you want:
   - **Slack** → *Send Channel Message*
   - **Discord** → *Send Channel Message*
   - **Email** → *Send Email* (use Gmail, Outlook, or Zapier's built-in mailer)
   - **Google Sheets** → *Create Spreadsheet Row* (great for an audit log)
   - **Notion / Linear / Airtable** → *Create Item* (route alerts to a task tracker)

## Field mapping cheatsheet

| Zapier field | Factor Weave path |
| --- | --- |
| Rule name | `rule.name` |
| Indicator | `rule.indicator` |
| Threshold | `rule.value` |
| Date | `as_of` |
| Match count | `count` |
| Top ticker | `matches.0.ticker` |
| Top value | `matches.0.value` |

For iterating over all matches in one message, use Zapier's **Looping** built-in or **Formatter → Utilities → Line-item to text**.

## Plan limits

Zapier's free tier allows 100 tasks/month. A single Factor Weave alert that fires daily and matches 5 tickers = 5 tasks/day = 150/month if you iterate, or 30/month if you summarize in one message. Plan accordingly.
