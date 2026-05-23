# factorweave-tools

Public tooling for the **[Factor Weave](https://factorweave.com/)** quant-factor data API — clients, add-ons, and integration recipes for the ~12,000 US-listed tickers covered by the platform.

Looking for a free key? Sign up at [factorweave.com](https://factorweave.com/) — 250 calls/day, no card.

---

## What's in here

| Path | What | Install / use |
| --- | --- | --- |
| [`python/`](./python/) | Official Python SDK — typed client with `pandas` / `polars` helpers, retry handling, paginated iterators | `pip install factorweave` ([PyPI](https://pypi.org/project/factorweave/)) |
| [`sheets/`](./sheets/) | Google Sheets add-on — exposes Factor Weave as spreadsheet custom functions (`=FACTORWEAVE("AAPL","rsi")`) | Paste `Code.gs` into your Apps Script project |

Future tooling — webhook templates (Slack/Discord/Zapier/n8n), notebook examples, MCP client configs — will land here under additional top-level directories. One repo, many doorways.

---

## Quick taste

```python
# Python SDK
from factorweave import FactorWeave
fw = FactorWeave(api_key="fw_live_…")

row = fw.features("AAPL").latest()
print(row.rsi, row.mom, row.comp_score)

hits = fw.similar("AAPL", method="cosine", limit=10, min_lookback_days=30)
for h in hits:
    print(h.ticker, h.date, h.distance)
```

```
# Google Sheets
=FACTORWEAVE("AAPL", "rsi,mom,comp_score")     // spills across columns
=FACTORWEAVE_TOP("mom", 25)                     // spills down a column
=FACTORWEAVE_REGIME()                           // current SPY-vol regime
```

---

## Honest positioning

Factor Weave is a **research substrate** — clean, point-in-time, leak-free factor data plus similarity tooling. It is *not* a return-prediction service. Our own leak-free probes show factor similarity does not forecast forward returns; only risk-coherence (forward realised volatility of analogues) shows a meaningful signal. The methodology and results are public at [factorweave.com/research.html](https://factorweave.com/research.html).

Use these tools the honest way: to screen, explore, and assemble research data. The thesis is yours.

---

## Links

- Main site · [factorweave.com](https://factorweave.com/)
- API docs · [factorweave.com/api/docs](https://factorweave.com/api/docs)
- OpenAPI · [factorweave.com/api/openapi.json](https://factorweave.com/api/openapi.json)
- MCP setup · [factorweave.com/mcp.html](https://factorweave.com/mcp.html)
- All integrations · [factorweave.com/integrations.html](https://factorweave.com/integrations.html)
- Research note · [factorweave.com/research.html](https://factorweave.com/research.html)

## License

MIT — see [`python/LICENSE`](./python/LICENSE).
