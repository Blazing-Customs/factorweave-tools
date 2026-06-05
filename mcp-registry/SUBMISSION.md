# Factor Weave — MCP registry submission kit

The point of this folder: **prepare the metadata once, submit everywhere.**
Every registry wants the same handful of facts. They're collected here so a
submission is copy-paste, not a research project each time.

The Factor Weave MCP server is a **remote, streamable-HTTP** server at
`https://factorweave.com/api/mcp` — there's nothing to install, users just
point their client at the URL. That makes most listings trivial.

---

## The reusable metadata (paste this into any form)

| Field | Value |
|---|---|
| **Name** | Factor Weave |
| **Reverse-DNS id** | `com.factorweave/mcp` |
| **One-liner** | A quant-factor brain for your AI — factor scores, similarity search, and risk-coherence analogues for 14,684 tickers across 6 asset classes. |
| **Tagline (honest)** | A research substrate, not a return-prediction service. We proved factor similarity doesn't predict returns — but it does predict *risk*. |
| **Tool count** | 14 |
| **Transport** | Streamable HTTP (remote) |
| **Endpoint** | `https://factorweave.com/api/mcp` |
| **Auth** | `fw_live_…` API key (free, no card) or OAuth 2.1; anonymous `initialize` / `tools/list` / `get_manifest` allowed |
| **Homepage** | https://factorweave.com/mcp.html |
| **Repo** | https://github.com/Blazing-Customs/factorweave-tools |
| **OpenAPI** | https://factorweave.com/api/openapi.json |
| **Icon** | `frontend/favicon` assets (512×512 PNG) |
| **Categories** | finance, data, quant, research, market-data |

### One-paragraph pitch (for directory descriptions)

> Factor Weave gives any MCP client a quant-factor research brain: ~28 daily
> factor columns, four similarity methods over 32-D regime-aware embeddings,
> leak-free + total-return forward-return labels, cross-asset regime
> conditioners (DXY/VIX/VVIX/VIX9D/TNX/XAU/VX), VX term structure, per-ticker
> futures factors with Open Interest, and point-in-time everything — for
> 14,684 tickers across equities, ETFs, indices, FX, crypto and futures.
> It's an honest tool: our own leak-free, survivor-free probes show factor
> similarity does **not** forecast returns. What it *does* forecast is
> risk — analogues cluster forward realised volatility (IC +0.075, t +10.2).
> Free tier, 250 calls/day, no card.

### 14-tool one-liner (for "what can it do")

get_features · find_similar (+ regime conditioner) · get_top ·
get_market_regime · get_market_context (cross-asset) · get_vx_term_structure ·
list_futures · get_report_card · get_risk_cluster · get_embedding ·
get_labels · get_alerts · get_usage · get_manifest

### Claude Desktop config snippet (for "how to install")

```json
{
  "mcpServers": {
    "factorweave": {
      "url": "https://factorweave.com/api/mcp",
      "transport": "streamable-http",
      "headers": { "Authorization": "Bearer fw_live_REPLACE_ME" }
    }
  }
}
```

(Full per-client configs — Cursor, Continue, Cline, Windsurf, Codex — live in
`../mcp-configs/`.)

---

## Where to submit (priority order)

Check each off as you go.

- [ ] **Official MCP Registry** — https://registry.modelcontextprotocol.io
      Canonical; feeds client-side discovery. Publish with the `mcp-publisher`
      CLI using `server.json` (this folder). Requires namespace ownership
      proof: either a DNS TXT record on `factorweave.com` (for the
      `com.factorweave/*` namespace) or use `io.github.Blazing-Customs/*` and
      verify via the GitHub repo. See:
      https://github.com/modelcontextprotocol/registry/blob/main/docs/guides/publishing/publish-server.md
- [ ] **PulseMCP** — https://www.pulsemcp.com  (largest hand-reviewed; submit via their form)
- [ ] **Smithery** — https://smithery.ai  (self-register; supports remote servers)
- [ ] **Glama** — https://glama.ai/mcp  (self-register)
- [ ] **mcp.so** — https://mcp.so  (largest raw index; self-register)
- [ ] **awesome-mcp-servers** — https://github.com/punkpeye/awesome-mcp-servers  (open a PR/issue)
- [ ] **OpenAI / ChatGPT app directory** — via the Apps SDK submission already in flight
      (the `mcpregistry-bot` that scans `/api/mcp` is theirs).

### Publishing to the official registry (the one that matters most)

```bash
# 1. Install the publisher CLI
#    https://github.com/modelcontextprotocol/registry → releases
# 2. From this folder, authenticate (GitHub or DNS namespace proof):
mcp-publisher login
# 3. Validate + publish:
mcp-publisher publish ./server.json
```

If using the `com.factorweave/*` namespace, add the DNS TXT record the CLI
prints to factorweave.com's DNS before publishing. If that's a hassle, switch
the `name` in `server.json` to `io.github.Blazing-Customs/factorweave-mcp`
and verify via the GitHub org instead.

---

## Honest-positioning guardrail

Every listing must keep the honest framing — **research substrate, not a
prediction service.** It's a credibility asset, not a liability: "we tested
whether factor similarity predicts returns, it doesn't, and here's the
leak-free proof" is exactly the kind of claim a quant audience trusts. Lead
with the thing that *works* (risk-coherence), never imply return prediction.
See https://factorweave.com/research.html
