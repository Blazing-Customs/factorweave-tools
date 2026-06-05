# factorweave-tools

Public tooling for the **[Factor Weave](https://factorweave.com/)** quant-factor data API — clients, add-ons, and integration recipes for the 14,000+ tickers covered by the platform across equities, ETFs, indices, FX, crypto, and futures (with Open Interest).

Looking for a free key? Sign up at [factorweave.com](https://factorweave.com/) — 250 calls/day, no card.

---

## What's in here

### Hand-written first-party SDKs

| Path | What | Install / use |
| --- | --- | --- |
| [`python/`](./python/) | Official Python SDK — typed client with `pandas` / `polars` helpers, retry handling, tier-aware exceptions. Also installs an `fw` CLI. | `pip install factorweave` · [PyPI](https://pypi.org/project/factorweave/) |
| [`typescript/`](./typescript/) | Official TypeScript / JavaScript SDK — dual ESM+CJS, full types, native `fetch`, auto-retry on 429/5xx. Server-side Node 18+ / Bun / Deno / serverless. | `npm install @blazing-customs/factorweave` · [npm](https://www.npmjs.com/package/@blazing-customs/factorweave) |
| [`r/`](./r/) | Official R package — `httr2`-based, idiomatic `data.frame` returns, retry on 429/5xx. | `install.packages("factorweave", repos = "https://blazing-customs.r-universe.dev")` · [r-universe](https://blazing-customs.r-universe.dev/) |
| [`sheets/`](./sheets/) | Google Sheets add-on — exposes Factor Weave as spreadsheet custom functions (`=FACTORWEAVE("AAPL","rsi")`). | Paste [`Code.gs`](./sheets/Code.gs) into your Apps Script project. |

### Auto-generated clients

| Path | What |
| --- | --- |
| [`generated/`](./generated/) | [openapi-generator](https://openapi-generator.tech/) clients from the live [OpenAPI spec](https://factorweave.com/api/openapi.json). Go, Rust, Ruby, PHP, Dart are committed; Java, C#, Kotlin, Swift are available on-demand via [`scripts/regenerate_clients.sh`](https://github.com/Blazing-Customs/factorweave/blob/main/scripts/regenerate_clients.sh) in the monorepo. |

### Integration recipes & connectors

| Path | What |
| --- | --- |
| [`webhooks/`](./webhooks/) | Alert-delivery templates — sample payload, Slack/Discord transformers (deployable as serverless functions), Zapier/Make/n8n setup guides + an importable n8n workflow, and a `fire-test-payload.sh` script for verifying your endpoint before going live. |
| [`mcp-configs/`](./mcp-configs/) | Drop-in MCP client configs for Claude Desktop, Cursor, Continue, Cline, Windsurf, ChatGPT Developer Mode, and OpenAI Codex CLI. Copy → replace `fw_live_REPLACE_ME` → restart your client. |
| [`openai/`](./openai/) | OpenAI-specific recipes: runnable Agents SDK + Responses API examples, and a trimmed OpenAPI subset for publishing a Factor Weave Custom GPT in the ChatGPT GPT store. |
| [`notebooks/`](./notebooks/) | 5 executable Jupyter notebooks covering the common workflows: first request · screening · similarity / peer set · leak-free backtest · regime conditioning. Run with or without an API key (demo fallback covers 8 sample tickers). |
| [`postman/`](./postman/) | Auto-generated Postman v2.1 collection (30+ requests, 21 groups) + environment file. Imports into Postman, Insomnia, Bruno, Thunder Client. |

More doorways will land here under additional top-level directories as we ship them.

---

## Quick taste

```python
# Python SDK
from factorweave import Client
client = Client(api_key="fw_live_…")

row  = client.features("AAPL")[0]
top  = client.top("mom", n=25).to_pandas()
hits = client.find_similar("AAPL", method="cosine", limit=10, min_lookback_days=30)
card = client.report_card("AAPL")       # HOBBY+
```

```bash
# fw CLI (ships with the Python package)
fw features AAPL
fw top mom -n 25
fw similar AAPL --method cosine
```

```typescript
// TypeScript SDK
import { FactorWeave } from '@blazing-customs/factorweave';

const fw = new FactorWeave({ apiKey: process.env.FACTORWEAVE_API_KEY });
const row  = await fw.latestFeatures('AAPL');
const hits = await fw.similar('AAPL', { method: 'cosine', limit: 10 });
const card = await fw.reportCard('AAPL');   // HOBBY+
```

```r
# R package
library(factorweave)
client <- fw_client(api_key = "fw_live_…")

row  <- fw_latest_features(client, "AAPL")
top  <- fw_top(client, "mom", n = 25)
hits <- fw_similar(client, "AAPL", method = "cosine", limit = 10)
```

```
# Google Sheets
=FACTORWEAVE("AAPL", "rsi,mom,comp_score")     // spills across columns
=FW_TOP("mom", 25)                              // spills down a column
=FW_MARKET_CONTEXT()                            // current SPY-vol regime + dispersion + breadth
=FW_REPORT_CARD("AAPL")                         // per-ticker digest (HOBBY+)
```

---

## What this dataset covers

- **14,684 tickers across 6 asset classes**: 9,231 stocks · 5,040 ETFs · 128 indices · 132 futures contracts · 79 FX pairs · 74 cryptos
- Daily, point-in-time, leak-free, survivor-free (includes 1,483 names delisted between 2000 and today)
- ~28 factor columns per ticker-day (returns, momentum, mean-reversion, RSI, ATR%, realized vol, beta vs SPY, composite score, cross-sectional ranks)
- **Futures factor decomposition** for top 30 contracts (VX, ES, NQ, CL, GC, ZN, DX, BTC, …) with Open Interest features `oi_z20`, `oi_vol_ratio`, `oi_chg_5d` (PRO+)
- **Intraday-derived stock factors** (PRO+) from 30-min bars: `overnight_ret`, `intraday_ret` (RTH-only), opening-range (`or_high_30`, `or_low_30`, `or_breakout_pct`), `vwap`, `vwap_dev_close`, `intraday_rv` (annualised), `late_drift`. Auto-included on the daily stock row from `/api/features/{ticker}` for PRO+ subscribers
- Forward-return labels (1d / 5d / 20d), leak-free, total-return aware (dividends reinvested)
- SPY-vol regime tagging (low / mid / high)
- **Cross-asset regime conditioners**: DXY, VIX, VVIX, VIX9D, TNX, XAU, VX-continuous closes + 20-day z-scores
- **VX term structure** (`(VX − VIX) / VIX`) — single-number contango/backwardation feed with 17-year history (HOBBY+)
- 32-dimensional regime-aware factor-state embeddings
- Top-K nearest analogues via cosine / DTW / label-aware / supervised PLS
- **Regime-conditional similarity** via `?conditioner=vx_term_structure` (QUANT)
- Daily factor dispersion, market breadth, regime transition odds
- Per-ticker risk-cluster tags (calm / normal / stressed)

Tier matrix is on the [pricing page](https://factorweave.com/landing-pages/).

---

## Honest positioning

Factor Weave is a **research substrate**, not a return-prediction service. Our own leak-free *and* survivor-free probes (14,181 US tickers including 1,483 names delisted between 2000 and today; forward-return labels include reinvested dividends) show factor similarity does *not* forecast forward returns (cross-sectional information coefficient is statistically zero across five methodologies). Only risk-coherence — using factor analogues to forecast forward realized volatility — shows a meaningful signal (IC +0.075, t-stat +10.2 across 237 monthly observations 2005–2024). The full methodology and results are published at [factorweave.com/research.html](https://factorweave.com/research.html).

Use these tools the honest way: to screen, explore, and assemble research data. The thesis is yours.

---

## Links

- Main site · [factorweave.com](https://factorweave.com/)
- API docs · [factorweave.com/api/docs](https://factorweave.com/api/docs)
- OpenAPI spec · [factorweave.com/api/openapi.json](https://factorweave.com/api/openapi.json)
- MCP setup · [factorweave.com/mcp.html](https://factorweave.com/mcp.html)
- Integrations · [factorweave.com/integrations.html](https://factorweave.com/integrations.html)
- Research note · [factorweave.com/research.html](https://factorweave.com/research.html)
- llms.txt (LLM-readable index) · [factorweave.com/llms.txt](https://factorweave.com/llms.txt)

## License

MIT — see [`python/LICENSE`](./python/LICENSE).
