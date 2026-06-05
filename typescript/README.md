# @blazing-customs/factorweave

Official TypeScript / JavaScript client for the [Factor Weave](https://factorweave.com/) quant-factor data API.

Daily factor scores, vector similarity, leak-free forward-return labels, derived market analytics (factor dispersion, regime, risk-cluster tags, 32-D embeddings, cross-asset regime conditioners, VX term structure, per-ticker futures factors with Open Interest, intraday-derived stock factors) and MCP for 14,000+ tickers across equities, ETFs, indices, FX, crypto, and futures.

## Install

```bash
npm install @blazing-customs/factorweave
# or
pnpm add @blazing-customs/factorweave
# or
yarn add @blazing-customs/factorweave
```

Node 18+ (uses native `fetch`). For older runtimes, pass your own `fetch`.

## Authenticate

[Sign up free](https://factorweave.com/) (250 calls/day, no card), then mint a long-lived key on the Profile page (`fw_live_…`).

```ts
import { FactorWeave } from '@blazing-customs/factorweave';

const fw = new FactorWeave({ apiKey: 'fw_live_…' });
// or read from FACTORWEAVE_API_KEY env var:
const fw = new FactorWeave();
```

## Quick recipes

```ts
// latest factor row
const row = await fw.latestFeatures('AAPL');
console.log(row?.rsi, row?.mom, row?.comp_score);

// 252-day history
const hist = await fw.features('AAPL', {
  startDate: '2024-01-01',
  endDate: '2024-12-31',
});

// top 25 momentum names today
const top = await fw.top({ factor: 'mom', n: 25 });

// similarity search
const hits = await fw.similar('AAPL', { method: 'cosine', limit: 10, minLookbackDays: 30 });
for (const h of hits) console.log(h.ticker, h.date, h.distance);

// derived analytics
const ctx  = await fw.marketContext();          // FREE today / HOBBY+ full
const card = await fw.reportCard('AAPL');       // HOBBY+
const risk = await fw.riskCluster('TSLA');      // PRO+
const emb  = await fw.embedding('NVDA');        // QUANT

// usage
const u = await fw.usage();
console.log(`${u.calls_today}/${u.daily_quota} today on ${u.tier}`);

// escape hatch for endpoints not yet wrapped
const anything = await fw.raw<{ status: string }>('/health', { authed: false });
```

## Error handling

```ts
import { FactorWeave, AuthError, TierError, NotFoundError, RateLimitError } from '@blazing-customs/factorweave';

try {
  await fw.embedding('AAPL');
} catch (e) {
  if (e instanceof TierError) console.error('upgrade to QUANT for embeddings');
  else if (e instanceof AuthError) console.error('check your API key');
  else if (e instanceof NotFoundError) console.error('unknown ticker');
  else if (e instanceof RateLimitError) console.error(`backoff ${e.retryAfterSeconds}s`);
  else throw e;
}
```

The client automatically retries on 429 (honoring `Retry-After`) and 5xx with exponential backoff (`opts.retries`, default 2).

## Configuration

| Option | Type | Default | Notes |
| --- | --- | --- | --- |
| `apiKey` | string | env `FACTORWEAVE_API_KEY` | Long-lived dev key. |
| `bearerToken` | string | — | Alternative to `apiKey`. |
| `baseUrl` | string | `https://factorweave.com/api` | Override for staging / self-hosted. |
| `timeoutMs` | number | `30000` | Per-request timeout (AbortController). |
| `retries` | number | `2` | Retry attempts on 429 + 5xx. |
| `userAgent` | string | `factorweave-js/<v>` | Identify your app. |
| `fetch` | function | `globalThis.fetch` | Inject your own for Node <18. |

## Server-side only — please

Like the Python SDK, this client uses your `fw_live_…` key as a bearer credential. Shipping that key to a browser exposes it to every visitor. Use this SDK from:

- Node.js / Bun / Deno servers
- Serverless functions (Vercel, Cloudflare Workers with Node compatibility, AWS Lambda)
- Build steps + edge functions where the key never reaches the client

For browser apps, proxy requests through your own backend.

## Honest positioning

Factor Weave is a **research substrate**, not a return-prediction service. Our own leak-free probes show factor similarity does *not* forecast forward returns — only risk-coherence (forward realized volatility of analogues) shows a meaningful signal. The full methodology is at [factorweave.com/research.html](https://factorweave.com/research.html).

Use these tools the honest way: to screen, explore, and assemble research data. The thesis is yours.

## Links

- [Factor Weave](https://factorweave.com/)
- [API documentation](https://factorweave.com/api/docs)
- [OpenAPI spec](https://factorweave.com/api/openapi.json)
- [MCP server](https://factorweave.com/mcp.html)
- [All integrations](https://factorweave.com/integrations.html)
- [Source repo](https://github.com/Blazing-Customs/factorweave-tools)

## License

MIT
