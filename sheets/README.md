# Factor Weave for Google Sheets

Call Factor Weave's quant data API directly from spreadsheet cells:

```
=FACTORWEAVE("AAPL", "rsi")      → 83.5
=FACTORWEAVE("NVDA", "mom")      → 0.124
=FW_TOP("mom", 25)               → 25 rows of top-momentum tickers
=FW_MARKET_CONTEXT()             → today's regime / dispersion / breadth
=FW_REPORT_CARD("AAPL")          → full per-ticker digest (HOBBY+)
```

## Install — one-time, ~2 minutes

1. **Get an API key.** Sign up at https://factorweave.com (free, no card),
   then mint a long-lived `fw_live_…` key under **Profile → API keys**.
2. **Open Apps Script** for any Google Sheet:
   `Extensions` → `Apps Script` → a new tab opens.
3. **Paste the script.** Delete the default contents of `Code.gs`, then
   paste everything from
   [`sdk/sheets/Code.gs`](./Code.gs) in this repo. Click 💾 to save.
4. **Reload the sheet.** A new menu appears: **Factor Weave**.
5. **Set your key.** `Factor Weave` → `Set API key…` → paste the key.

That's it. Type `=FACTORWEAVE("AAPL", "rsi")` in a cell.

## Functions

| Formula | Returns | Tier |
|---|---|---|
| `FACTORWEAVE(ticker, factor)` | One factor value, latest day | FREE |
| `FW_TOP(factor, n)` | 2-column range: top-N by a factor | FREE |
| `FW_MARKET_CONTEXT()` | Today's regime / dispersion / breadth (key-value) | FREE |
| `FW_REPORT_CARD(ticker)` | Full digest: snapshot, ranks, risk cluster, unusualness | HOBBY+ |

Common factor names: `rsi`, `mom`, `meanrev`, `comp_score`, `rv_20`, `beta_spy`,
`z_52w`, `ret_1d`/`5d`/`20d`/`60d`, `q_mom`, `q_comp_score`. Full list in
the [docs](https://factorweave.com/#docs) and the
[OpenAPI spec](https://factorweave.com/api/openapi.json).

## Notes

- **Sheets caches custom-function results aggressively.** Recalculation
  fires when an input cell changes, on file open, or when you edit the
  formula. The whole sheet usually triggers ≤ a few dozen API calls per
  session — well within the FREE tier's 250/day quota.
- **Errors show in the cell** as `#FW! …` (no API key, missing factor) or
  via a `#ERROR!` cell with `Factor Weave 4XX: …` on hover.
- **Tier gating** is enforced server-side. `FW_REPORT_CARD` against a
  FREE-tier account will return `Factor Weave 403: the report card
  requires the HOBBY tier or higher`.

## Honest framing

Factor Weave is a research substrate, not a return-prediction service.
The data is for screening, peer-finding, regime-aware research, and
assembling leak-free backtest datasets — not for "the spreadsheet predicts
the price." See the [research note](https://factorweave.com/research.html).
