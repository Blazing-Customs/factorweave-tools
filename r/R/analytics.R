#' Whole-universe market context (factor dispersion, breadth, regime)
#' @param client A \code{factorweave_client}.
#' @param history If \code{TRUE}, return the full 252-day history (HOBBY+).
#'   Default \code{FALSE} returns today's snapshot only (FREE+).
#' @return A list with current regime + analytics.
#' @export
fw_market_context <- function(client, history = FALSE) {
  query <- if (isTRUE(history)) list() else list(latest = 1L)
  fw_request(client, "/market-context", query = query)
}

#' Per-ticker report card (HOBBY+)
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol.
#' @return A list — snapshot, percentile ranks, risk cluster, regime,
#'   unusualness score.
#' @export
fw_report_card <- function(client, ticker) {
  fw_request(client, sprintf("/report-card/%s", toupper(ticker)))
}

#' Per-ticker risk-cluster tag (PRO+)
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol.
#' @return A list with the cluster label and supporting metrics.
#' @export
fw_risk_cluster <- function(client, ticker) {
  fw_request(client, sprintf("/risk-cluster/%s", toupper(ticker)))
}

#' Raw 32-D regime-aware factor-state embedding (QUANT)
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol.
#' @return A list with \code{ticker}, \code{date}, and a numeric \code{vector}.
#' @export
fw_embedding <- function(client, ticker) {
  fw_request(client, sprintf("/embedding/%s", toupper(ticker)))
}

#' Your daily usage + quota
#' @param client A \code{factorweave_client}.
#' @export
fw_usage <- function(client) {
  fw_request(client, "/usage")
}

#' Public bundle manifest (no auth required)
#' @param client A \code{factorweave_client}. Pass any client; auth is skipped.
#' @export
fw_manifest <- function(client) {
  fw_request(client, "/manifest", authed = FALSE)
}

#' Public health probe (no auth required)
#' @param client A \code{factorweave_client}. Pass any client; auth is skipped.
#' @export
fw_health <- function(client) {
  fw_request(client, "/health", authed = FALSE)
}
