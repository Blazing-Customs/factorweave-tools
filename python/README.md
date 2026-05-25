# factorweave — official Python client

Typed client for the [Factor Weave](https://factorweave.com/) quant data API.
Factor data, vector similarity, leak-free forward-return labels, derived
market analytics (factor dispersion, regime, risk-cluster tags, 32-D
embeddings) and MCP — for ~12,000 US-listed tickers.

## Install

```bash
pip install factorweave
# optional adapters:
pip install 'factorweave[pandas]'
pip install 'factorweave[polars]'
```

## Authenticate

Get a free account at https://factorweave.com, then mint a long-lived dev
key on the Profile page (`fw_live_…`).

```python
import factorweave as fw
client = fw.Client(api_key="fw_live_...")
# or, with an email/password login:
client = fw.Client(); client.login("you@example.com", "...")
```

## Quick recipes

```python
# Latest factor row for a ticker
row = client.features("AAPL")
print(row[0]["rsi"], row[0]["comp_score"])

# 252-day factor history → polars
hist = client.features("AAPL", start="2024-01-01", end="2024-12-31").to_polars()

# Top 25 momentum names today
client.top("mom", n=25).to_pandas()

# Factor analogues — historical, not co-moving same-day ETFs
n = client.find_similar("NVDA", method="cosine", min_lookback_days=30)
for row in n["neighbors"][:5]:
    print(row["ticker"], row["date"], row["features"]["rsi"])

# Derived analytics
client.market_context()                # FREE-friendly: today only
client.market_context(history=True)    # HOBBY+: 252-day history
client.report_card("AAPL")             # HOBBY+
client.risk_cluster("TSLA")            # PRO+
client.embedding("AAPL")               # QUANT
```

## The `fw` CLI

Installing `factorweave` also installs an `fw` command — the same client, exposed as subcommands. Friendly tables by default, `--json` for pipes.

```bash
export FACTORWEAVE_API_KEY=fw_live_…

fw features AAPL                          # latest factor row
fw features AAPL --start 2024-01-01 --end 2024-12-31
fw top mom -n 25                          # top 25 momentum names
fw similar AAPL --method cosine --limit 10
fw market-context
fw report-card NVDA                       # HOBBY+
fw risk-cluster TSLA                      # PRO+
fw embedding AAPL --json | jq '.vector | length'

fw --help                                 # full command list
```

`fw health` and `fw manifest` work without auth (public endpoints).

## Errors

Failures raise typed exceptions you can catch granularly:

```python
from factorweave import AuthError, TierError, RateLimitError, NotFoundError

try:
    client.risk_cluster("AAPL")
except TierError as e:
    print(f"Need {e.required_tier}, you have {e.your_tier}")
except RateLimitError:
    print("daily quota exhausted")
```

## Honest framing

Factor Weave is a research substrate, not a return-prediction service.
Our own leak-free testing — [research note](https://factorweave.com/research.html) —
shows factor similarity does not forecast returns. The `supervised`
similarity method is a return-weighted projection, not an oracle. Use the
data for screening, peer-finding, regime-aware research, and assembling
leak-free backtest datasets.

## Resources

- Docs: https://factorweave.com/#docs
- OpenAPI spec: https://factorweave.com/api/openapi.json
- Swagger UI: https://factorweave.com/api/docs/swagger
- MCP setup: https://factorweave.com/mcp.html
- Support: support@factorweave.com
