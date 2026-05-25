# Factor Weave notebooks

Executable Jupyter notebooks that walk through the common Factor Weave workflows. Every notebook works in two modes:

- **With a key** (set `FACTORWEAVE_API_KEY=fw_live_…` in your environment): uses the full API, all 10,000+ tickers, every endpoint.
- **Without a key**: falls back to the unauthenticated `/demo/{ticker}` endpoint (8 sample tickers: AAPL, MSFT, NVDA, AMZN, GOOGL, META, TSLA, JPM). Useful for trying things out before signing up.

## Run them

```bash
pip install jupyter pandas matplotlib factorweave
jupyter lab    # or jupyter notebook
```

Open any `.ipynb` in this directory.

Get a free key at [factorweave.com](https://factorweave.com/) (250 calls/day, no card).

## What's here

| # | Notebook | What it covers | Tier needed |
| --- | --- | --- | --- |
| 1 | [`01-first-request.ipynb`](./01-first-request.ipynb) | Install, auth, your first factor lookup | FREE |
| 2 | [`02-screening.ipynb`](./02-screening.ipynb) | Top-N screening + filtering by other factors | FREE (limited to /demo without a key) |
| 3 | [`03-similarity-peer-set.ipynb`](./03-similarity-peer-set.ipynb) | Find factor-similar setups; build a peer group | FREE |
| 4 | [`04-leak-free-backtest.ipynb`](./04-leak-free-backtest.ipynb) | Join point-in-time features to forward-return labels | PRO+ for labels |
| 5 | [`05-regime-conditioning.ipynb`](./05-regime-conditioning.ipynb) | Condition any study on the SPY volatility regime | HOBBY+ for full regime history |

Notebooks 4 and 5 will execute the parts they can with the available tier, then skip the gated parts gracefully.

## Honest framing

Factor Weave is a **research substrate**, not a return-prediction service. Our own leak-free probes show that factor similarity does *not* forecast forward returns. Only risk-coherence (forward realized volatility of analogues) shows a meaningful signal. See the [research note](https://factorweave.com/research.html) for the methodology.

These notebooks build *screening and research* workflows. None of them claim to predict price.

## License

MIT.
