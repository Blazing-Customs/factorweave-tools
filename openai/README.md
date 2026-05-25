# Factor Weave + OpenAI integrations

Recipes for using Factor Weave from OpenAI's tooling.

## What's here

| Path | What | Auth model |
| --- | --- | --- |
| [`agents_sdk_example.py`](./agents_sdk_example.py) | A runnable Python agent built with the OpenAI Agents SDK that uses Factor Weave's MCP server as a tool source | server-side: your OpenAI key + your Factor Weave key, both held by your code |
| [`responses_api_example.py`](./responses_api_example.py) | Calling Factor Weave from the OpenAI Responses API via function-calling | server-side, same |
| [`actions/`](./actions/) | A trimmed OpenAPI subset + setup guide for **ChatGPT Custom GPT Actions** (the GPT store / Custom GPTs) | per-GPT shared API key (single `fw_live_…` shared across all users of the GPT) |
| [`../mcp-configs/openai-codex.toml`](../mcp-configs/openai-codex.toml) | Codex CLI's MCP config (TOML) | per-user `X-API-Key` header |
| [`../mcp-configs/openai-chatgpt.md`](../mcp-configs/openai-chatgpt.md) | ChatGPT Developer Mode setup guide for end users | per-user `X-API-Key` header |

## What's coming

| Path | What | When |
| --- | --- | --- |
| OAuth 2.1 server | per-user signed-in flow for **ChatGPT Apps** (the publishable connector store) and **GPT Actions with OAuth** | see [`docs/oauth-implementation-plan.md`](../../docs/oauth-implementation-plan.md) |

## The surface map

For why we picked these specific recipes and what each unlocks, see the [Integrations page](https://factorweave.com/integrations.html#openai).

## Honest framing

Same as everywhere: Factor Weave is a research substrate, not a return-prediction service. The data is for screening, peer-finding, regime-aware research, and assembling leak-free backtest datasets — not for "the chatbot predicts the price." See the [research note](https://factorweave.com/research.html).

## License

MIT.
