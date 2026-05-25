# Factor Weave MCP — drop-in client configs

The Factor Weave [MCP server](https://factorweave.com/mcp.html) speaks JSON-RPC 2.0 over streamable-HTTP, protocol version `2025-03-26`. It exposes 12 tools — factor lookups, similarity search, top-N screens, market-context analytics, per-ticker report cards, risk-cluster tags, 32-D embeddings, forward-return labels, dataset metadata, and your usage stats.

This directory ships **drop-in config snippets for every popular MCP-capable client**. Pick the one you use, copy the snippet, replace `fw_live_…` with your key, restart the client. The tools appear automatically.

## Get a key first

1. Sign up at [factorweave.com](https://factorweave.com/) (250 calls/day on FREE, no card).
2. Profile → API Access → mint a long-lived key. It looks like `fw_live_…`.
3. MCP access starts at the HOBBY tier ($19/mo). FREE tier can call the public `get_manifest` tool only.

## Configs

| Client | Config path | Snippet |
| --- | --- | --- |
| Claude Desktop | `~/Library/Application Support/Claude/claude_desktop_config.json` (Mac) · `%APPDATA%\Claude\claude_desktop_config.json` (Win) | [`claude-desktop.json`](./claude-desktop.json) |
| Cursor | `~/.cursor/mcp.json` (global) or `.cursor/mcp.json` (per-project) | [`cursor.json`](./cursor.json) |
| Continue (VS Code / JetBrains) | `~/.continue/config.json` → `mcpServers` block | [`continue.json`](./continue.json) |
| Cline (VS Code) | `cline_mcp_settings.json` (open via the Cline settings panel) | [`cline.json`](./cline.json) |
| Windsurf / Codeium Cascade | `~/.codeium/windsurf/mcp_config.json` | [`windsurf.json`](./windsurf.json) |
| OpenAI Codex CLI | `~/.codex/config.toml` (TOML, not JSON) | [`openai-codex.toml`](./openai-codex.toml) |
| ChatGPT Developer Mode | UI — Settings → Connectors (beta toggle in Plus/Pro/Business/Enterprise) | [`openai-chatgpt.md`](./openai-chatgpt.md) (step-by-step) |
| Generic (any compliant client) | — | [`generic.json`](./generic.json) |
| Library use (without a client) | — | see the [Python SDK](https://github.com/Blazing-Customs/factorweave-tools/tree/main/python) or [TypeScript SDK](https://github.com/Blazing-Customs/factorweave-tools/tree/main/typescript) |

All snippets target the same endpoint (`https://factorweave.com/api/mcp`) with the same `Authorization: Bearer fw_live_…` header. The only differences are the wrapping JSON keys each client expects.

## Sanity-check your install

After dropping in the config and restarting the client, ask it (in plain language) something like:

> What volatility regime is the market in right now?

The client should call `get_market_context` (a Factor Weave tool) and answer. If it doesn't, see [troubleshooting](#troubleshooting) below.

## What if your client supports `transport: "stdio"` only?

A handful of older / niche MCP clients only support `stdio` transport. For those, you'll need a small bridging adapter that runs as a subprocess and proxies `stdio` → HTTPS. The [`mcp-proxy`](https://github.com/sparfenyuk/mcp-proxy) tool does this. Example config:

```json
{
  "command": "uvx",
  "args": ["mcp-proxy", "https://factorweave.com/api/mcp"],
  "env": { "API_ACCESS_TOKEN": "fw_live_…" }
}
```

## Troubleshooting

- **"tools don't appear after restart"** — check the client's logs. Most clients have an MCP debug pane; Claude Desktop logs are in `~/Library/Logs/Claude/` (Mac) or `%APPDATA%\Claude\logs\` (Win).
- **`401 Unauthorized`** — your token is missing the `fw_live_` prefix or doesn't have MCP access (FREE tier can only call `get_manifest`).
- **`403 Forbidden — upgrade your tier`** — the tool you asked for needs a higher tier. See the [pricing page](https://factorweave.com/landing-pages/).
- **`429 Too Many Requests`** — daily quota exhausted; resets at 00:00 UTC.

## Verify the live server

```bash
curl -s -X POST https://factorweave.com/api/mcp \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer fw_live_…" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list","params":{}}' | jq '.result.tools[].name'
```

You should see twelve tool names. If you only see `get_manifest`, you're on the FREE tier — upgrade to HOBBY for the rest.

## License

MIT.
