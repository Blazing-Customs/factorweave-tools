# factorweave (R)

R client for the [Factor Weave](https://factorweave.com/) quant-factor data API. Daily factor scores, vector similarity, leak-free forward-return labels, derived market analytics (factor dispersion, regime, risk-cluster tags, 32-D embeddings, cross-asset regime conditioners, VX term structure, per-ticker futures factors with Open Interest, intraday-derived stock factors) for 14,000+ tickers across equities, ETFs, indices, FX, crypto, and futures.

## Install

From r-universe (recommended — no CRAN review delay):

```r
install.packages("factorweave",
                 repos = c("https://blazing-customs.r-universe.dev",
                           "https://cloud.r-project.org"))
```

From GitHub directly:

```r
# install.packages("remotes")
remotes::install_github("Blazing-Customs/factorweave-tools",
                        subdir = "r")
```

## Authenticate

[Sign up free](https://factorweave.com/) (250 calls/day, no card), then mint a long-lived key on the Profile page (`fw_live_…`).

```r
library(factorweave)
client <- fw_client(api_key = "fw_live_...")
# Or set FACTORWEAVE_API_KEY in your env / .Renviron and just call:
client <- fw_client()
```

## Quick recipes

```r
# Latest factor row
row <- fw_latest_features(client, "AAPL")
row$rsi; row$mom; row$comp_score

# 252-day history
hist <- fw_features(client, "AAPL",
                    start = "2024-01-01", end = "2024-12-31")

# Top 25 momentum names today
top <- fw_top(client, "mom", n = 25)

# Similarity search
hits <- fw_similar(client, "AAPL", method = "cosine", limit = 10,
                   min_lookback_days = 30)
head(hits$neighbors)

# Derived analytics
ctx  <- fw_market_context(client)             # FREE today / HOBBY+ full
card <- fw_report_card(client, "AAPL")        # HOBBY+
risk <- fw_risk_cluster(client, "TSLA")       # PRO+
emb  <- fw_embedding(client, "NVDA")          # QUANT — emb$vector is a 32-D numeric

# Usage
fw_usage(client)
```

## Tier matrix

| Function | Tier |
| --- | --- |
| `fw_features`, `fw_latest_features`, `fw_top` | FREE+ |
| `fw_similar(method = "cosine")` | FREE+ |
| `fw_similar(method = "dtw")` | HOBBY+ |
| `fw_market_context(history = TRUE)`, `fw_report_card` | HOBBY+ |
| `fw_similar(method = "label_aware")`, `fw_risk_cluster`, `fw_labels` | PRO+ |
| `fw_similar(method = "supervised")`, `fw_embedding` | QUANT |

## Honest positioning

Factor Weave is a **research substrate**, not a return-prediction service. Our own leak-free probes show factor similarity does *not* forecast forward returns. Only risk-coherence (forward realized volatility of analogues) shows a meaningful signal. Full methodology at <https://factorweave.com/research.html>.

## Links

- [Factor Weave](https://factorweave.com/)
- [API documentation](https://factorweave.com/api/docs)
- [OpenAPI spec](https://factorweave.com/api/openapi.json)
- [All integrations](https://factorweave.com/integrations.html)
- [Umbrella source repo](https://github.com/Blazing-Customs/factorweave-tools)

## License

MIT
