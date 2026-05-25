# Build a "Factor Weave" Custom GPT in ChatGPT

This directory ships everything you need to publish a Custom GPT in the ChatGPT GPT store that gives ChatGPT users live access to Factor Weave's quant-data API. The trimmed OpenAPI spec [`factorweave-action-openapi.json`](./factorweave-action-openapi.json) has been carefully cut to fit ChatGPT's Action limits (≤30 operations, ≤300-char descriptions, ≤700-char param descriptions, ≤1 MB total) — 16 endpoints across the most useful Factor Weave surfaces.

Time to ship: ~5 minutes once you have your Factor Weave key.

## Step-by-step

1. **Get a Factor Weave key.** Sign up at [factorweave.com](https://factorweave.com/) (250 calls/day on FREE, no card). Profile → API Access → mint a `fw_live_…` key.

   > **Important — the GPT shares one key across all its users.** Custom GPT Actions use a single Action-level API key, not per-user keys. Every ChatGPT user who interacts with your GPT will hit Factor Weave with the same `fw_live_…`. The HOBBY tier gives 2,500 calls/day, which covers a small public GPT; high-traffic GPTs need PRO or QUANT. If you want per-user keys, see [the OAuth path](../../../docs/oauth-implementation-plan.md).

2. **Open the GPT builder.** ChatGPT → bottom-left **Explore GPTs** → top-right **+ Create**. ChatGPT opens the GPT editor.

3. **Configure the GPT.** Click **Configure** at the top. Fill in:
   - **Name**: `Factor Weave` (or your own brand)
   - **Description**: *"Quant-factor data for ~12,000 US tickers. Daily factor scores, similarity search, market regime — research substrate, not a return-prediction service."*
   - **Instructions**: paste the [Instructions block](#instructions-to-paste) below
   - **Capabilities**: turn off Web Browsing and Image Generation (we don't need them; they slow down responses). Code Interpreter optional — useful if you want the GPT to do post-processing analysis on the JSON results.

4. **Add the Action.** Scroll down → **Actions** → **Create new action**.
   - **Authentication**: click the gear → **API Key** → paste your `fw_live_…` → **Auth Type**: `Custom` → **Custom Header Name**: `X-API-Key` → **Save**.
   - **Schema**: click **Import from URL**? No — there's no live hosted Action spec, so paste the entire contents of [`factorweave-action-openapi.json`](./factorweave-action-openapi.json) into the schema box. (Or upload it.)
   - **Privacy policy**: `https://factorweave.com/legal/privacy.html`
   - Click **Save**.

5. **Test it.** In the right-hand preview panel, ask:
   > *"What volatility regime is the market in right now, and show me the 5 strongest-momentum tickers that aren't already overbought on RSI."*

   ChatGPT should hit `/api/market-context` and `/api/top` and answer. Tools appear under each response as collapsible expandos.

6. **Publish.** Top-right **Save → Publish to**:
   - **Only me** (private — recommended while testing)
   - **Anyone with a link** (semi-public, no GPT store listing)
   - **Everyone** (public; goes through OpenAI's GPT-store review)

## Instructions to paste

```
You are Factor Weave's official GPT — a quant-data assistant for US equities.
You have access to live Factor Weave API endpoints via Actions: factor data,
similarity search, market-context analytics, report cards, risk clusters,
embeddings, and forward-return labels for ~12,000 US-listed tickers.

When the user asks about a ticker or the market, USE the tools. Don't guess
from training data — Factor Weave returns nightly-fresh, leak-free factor
values. Cite the numbers you got back.

**Honest framing — this is critical to your responses:**

Factor Weave is a RESEARCH SUBSTRATE, not a return-prediction service. The
data is for SCREENING, peer-finding, regime-aware research, and assembling
leak-free backtest datasets. It does not predict future returns. Leak-free
testing by Factor Weave's authors shows cross-sectional factor similarity
has zero forward-return information coefficient. Only RISK-COHERENCE (forward
realized volatility of analogues) shows a meaningful signal.

So:
- DO answer questions about current factor state, similar setups, regime,
  ranks, dispersion.
- DO suggest factors and screens, peer sets, regime conditioning.
- DO NOT say "X is likely to outperform" based on factor similarity.
- DO NOT predict price targets or forecast direction from these tools.
- DO point users at https://factorweave.com/research.html when they ask
  "does this predict returns?" — the honest answer is mostly no.

Common factor names: rsi, mom (momentum), meanrev (mean-reversion), comp_score
(composite), rv_20 (realized vol), beta_spy, q_comp_score (quantile rank).

When the user is ready to do real work, point them at the Python SDK
(`pip install factorweave`), the TypeScript SDK (`@blazing-customs/factorweave`),
or the MCP server at https://factorweave.com/mcp.html.
```

## What's exposed in the trimmed Action

16 endpoints, the most valuable subset:

| Path | What | Tier |
| --- | --- | --- |
| `/health`, `/manifest` | Liveness + bundle date | public |
| `/demo/{ticker}`, `/demo/tickers` | 8-ticker demo set (no-auth preview) | public |
| `/features/{ticker}` | Per-ticker factor row(s) | FREE+ |
| `/top` | Top-N tickers by a factor | FREE+ |
| `/csv/features` | CSV export of latest features | FREE+ |
| `/vector-search/similar/{ticker}` | Find factor-similar setups | FREE+ (cosine), HOBBY+ (DTW), PRO+ (label-aware), QUANT (supervised) |
| `/labels/{ticker}` | Forward-return labels | PRO+ |
| `/market-context` | Regime + dispersion + breadth | FREE today / HOBBY+ history |
| `/report-card/{ticker}` | Per-ticker digest | HOBBY+ |
| `/risk-cluster/{ticker}` | calm / normal / stressed tag | PRO+ |
| `/embedding/{ticker}` | 32-D factor-state vector | QUANT |
| `/usage`, `/recent-activity`, `/auth/me` | Account introspection | FREE+ |

Endpoints intentionally **dropped** from the Action (since GPT users have no use for them): all of `/billing/*`, `/admin/*`, `/push/*`, `/auth/register`, `/auth/login`, `/alerts/rules`, `/me/keys`, `/mcp` itself, `/config`, `/status`, `/docs`.

If you want a different subset, edit `KEEP_PATHS` in [`scripts/build_openai_action_spec.py`](../../../scripts/build_openai_action_spec.py) and rerun.

## Regenerating the Action spec

Whenever the live OpenAPI spec changes (new endpoint, schema tweak, etc.):

```bash
python scripts/build_openai_action_spec.py
```

That regenerates [`factorweave-action-openapi.json`](./factorweave-action-openapi.json) from the live spec, trims descriptions to ChatGPT's limits, and reports the op count. Then re-import into the GPT builder.

## Troubleshooting

- **"Action is not responding"** — check that the Authentication is set to `Custom` header name `X-API-Key`, and that your `fw_live_…` key is current (not revoked).
- **"Forbidden"** in a tool response — the GPT user is hitting a tier-gated endpoint. The error message contains which tier is required; bump your Action's key to a higher tier OR remove that endpoint from the slim spec.
- **"Operations exceeded 30 limit"** at import — somebody expanded `KEEP_PATHS` past the cap. Drop a path until you're ≤ 30.
