# ChatGPT — connect Factor Weave via Developer Mode MCP

ChatGPT (Plus, Pro, Business, Enterprise, Edu) ships an MCP client behind its **Developer Mode** toggle, separate from the polished "Apps" surface that's gated behind OAuth. Developer Mode lets you point ChatGPT at any compliant MCP server with a header-based auth — which is exactly what Factor Weave exposes today.

> Developer Mode is in beta. UI may move. The flow below is current as of early 2026.

## Step-by-step

1. **Get a Factor Weave key.** [Sign up](https://factorweave.com/) (250 calls/day on FREE, no card). Profile → API Access → mint a long-lived `fw_live_…` key. MCP access requires the HOBBY tier ($19/mo) or higher — the FREE tier can call `get_manifest` only.
2. **Enable Developer Mode in ChatGPT.**
   - Open ChatGPT → click your profile → **Settings**.
   - Go to **Connectors** (or **Apps & Connectors**) → **Advanced**.
   - Toggle **Developer mode** on. Read the warning — Developer Mode lets ChatGPT call into your MCP servers with write capability if they expose it. Factor Weave is read-only, so this is safe.
3. **Add Factor Weave as an MCP server.**
   - Still in Settings → **Connectors** → **Create / Add MCP server**.
   - Name: `Factor Weave`
   - URL: `https://factorweave.com/api/mcp`
   - Transport: `streamable HTTP` (selectable from the dropdown; if you only see `SSE` and `HTTP`, choose `HTTP` — ChatGPT auto-negotiates)
   - Auth: pick **Headers** (the option that lets you set raw HTTP headers; if your build only offers OAuth + None, see [Note on OAuth-only builds](#note-on-oauth-only-builds) below)
   - Header: `X-API-Key: fw_live_…` *(paste your real key)*
   - Save.
4. **Try it.** Start a new chat in ChatGPT, click the **+** icon, ensure `Factor Weave` is enabled, and ask in plain language:
   > *"What volatility regime is the market in right now, and show me the 10 strongest-momentum tickers that aren't already overbought on RSI."*

   ChatGPT will pick up the `get_market_context`, `get_top`, and `get_features` tools and answer with live data.

## Tools you get

Twelve tools over one endpoint — `get_features`, `find_similar`, `get_top`, `get_market_context`, `get_report_card`, `get_risk_cluster`, `get_embedding`, `get_labels`, `get_manifest`, `get_alerts`, `get_usage`, and `who_am_i`. Full catalog at <https://factorweave.com/mcp.html>.

## Note on OAuth-only builds

Some ChatGPT release channels (notably the published-Apps flow as of Dec 2025) require **OAuth 2.1 + PKCE only** — they will not accept static API-key headers. If you're on one of those builds, you'll see only `OAuth` and `Anonymous` options when adding the MCP server, no `Headers` option.

In that case:
- **Use Anonymous mode.** ChatGPT will connect without auth. Factor Weave's `get_manifest` tool works without auth (returns the public bundle catalog), and other tools return tier-gated errors that ChatGPT will report cleanly. Useful as a discovery demo.
- **Or wait.** OAuth support is on Factor Weave's roadmap (see [`docs/oauth-implementation-plan.md`](../../docs/oauth-implementation-plan.md) in the monorepo). Once shipped, per-user signed-in access lights up.
- **Or use the Codex CLI** ([`openai-codex.toml`](./openai-codex.toml)) — it accepts header auth today.

## Honest framing

Same as everywhere else: Factor Weave is a **research substrate**, not a return-prediction service. ChatGPT will be very willing to *sound* confident about returns; the data underneath does not predict returns (leak-free probes show cross-sectional IC ≈ 0). Use the tools for screening, peer-finding, regime-aware research — see the [research note](https://factorweave.com/research.html) for the methodology.

## Links

- [Factor Weave MCP guide](https://factorweave.com/mcp.html)
- [OpenAI Developer Mode docs](https://platform.openai.com/docs/guides/developer-mode)
- [OpenAI MCP Apps overview](https://developers.openai.com/api/docs/mcp)
- [Tools catalog (live)](https://factorweave.com/api/openapi.json)
