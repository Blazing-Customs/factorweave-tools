# Publishing the R package

The R package lives in this monorepo at `sdk/r/` and is mirrored to the public umbrella repo at
[`Blazing-Customs/factorweave-tools/r/`](https://github.com/Blazing-Customs/factorweave-tools/tree/main/r)
via `scripts/sync_tools_repo.sh`. R distribution channels then read from the public repo.

## Option 1 — r-universe (recommended for now)

r-universe builds packages directly from a public GitHub repo with no review delay. The Factor Weave registry will be at:

  https://blazing-customs.r-universe.dev

**One-time setup (you do this in a browser, ~2 min):**

1. Sign in to https://r-universe.dev with the GitHub account that owns the `Blazing-Customs` org.
2. Click "Add packages" → it auto-detects `factorweave-tools` if you've made it public (we have).
3. Tell it the package lives at `r/` (the subdir).

After that, every push to `Blazing-Customs/factorweave-tools` triggers a rebuild within ~5 minutes.

Users install with:

```r
install.packages("factorweave",
                 repos = c("https://blazing-customs.r-universe.dev",
                           "https://cloud.r-project.org"))
```

## Option 2 — CRAN (slow, do later if there's traction)

CRAN review takes 1-3 weeks and demands strict policy compliance (no `:::` calls, no internet in
examples, all examples must run cleanly offline or be wrapped in `\dontrun{}`, etc.). The package as
written should pass `R CMD check --as-cran` cleanly because every example is `\dontrun{}`.

```bash
cd sdk/r
R CMD build .                            # produces factorweave_<v>.tar.gz
R CMD check --as-cran factorweave_*.tar.gz   # must be clean
# then upload at https://cran.r-project.org/submit.html
```

## Option 3 — drat / personal repo

A self-hosted Drat repo on GitHub Pages gives you full control but is more bookkeeping. Skip unless
r-universe stops being viable.

## Local sanity test (no network)

```bash
cd sdk/r
R CMD INSTALL .
R -e 'library(factorweave); print(fw_client())'
```

If R isn't installed locally:

```bash
# Debian / Ubuntu
sudo apt-get install r-base r-base-dev
```

## Updating

1. Bump `Version:` in `DESCRIPTION`
2. Add entries to a `NEWS.md` (optional but conventional)
3. `git push` → r-universe rebuilds within ~5 minutes
