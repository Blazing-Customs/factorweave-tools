#' Per-ticker factor row(s)
#'
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol, e.g. \code{"AAPL"}.
#' @param date Optional single date (\code{YYYY-MM-DD}).
#' @param start,end Optional date range. History is last 252 trading days.
#' @return A \code{data.frame} of factor rows.
#' @export
fw_features <- function(client, ticker, date = NULL, start = NULL, end = NULL) {
  resp <- fw_request(
    client,
    sprintf("/features/%s", toupper(ticker)),
    query = list(date = date, start_date = start, end_date = end)
  )
  fw_to_df(if (is.data.frame(resp) || is.null(resp$rows)) resp else resp$rows)
}

#' Latest single factor row for a ticker
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol.
#' @return A 1-row \code{data.frame}.
#' @export
fw_latest_features <- function(client, ticker) {
  df <- fw_features(client, ticker)
  if (nrow(df) == 0) return(df)
  df[1, , drop = FALSE]
}

#' Top-N tickers ranked by a factor
#' @param client A \code{factorweave_client}.
#' @param factor Factor column name (e.g. \code{"mom"}, \code{"rsi"}, \code{"comp_score"}).
#' @param n Number of rows.
#' @param direction \code{"desc"} (default) or \code{"asc"}.
#' @return A \code{data.frame}.
#' @export
fw_top <- function(client, factor, n = 25L, direction = c("desc", "asc")) {
  direction <- match.arg(direction)
  resp <- fw_request(client, "/top",
                     query = list(factor = factor, n = as.integer(n), direction = direction))
  fw_to_df(resp$rows %||% resp)
}

#' Find factor-similar tickers (vector search)
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol.
#' @param method One of \code{"cosine"} (FREE+), \code{"dtw"} (HOBBY+),
#'   \code{"label_aware"} (PRO+), \code{"supervised"} (QUANT).
#' @param limit Number of neighbours to return.
#' @param min_lookback_days Minimum days back; filters today's co-moving ETFs out.
#' @return A list with \code{ticker}, \code{method}, and a \code{neighbors}
#'   \code{data.frame}.
#' @export
fw_similar <- function(client, ticker, method = "cosine", limit = 10L,
                       min_lookback_days = 30L) {
  resp <- fw_request(
    client,
    sprintf("/vector-search/similar/%s", toupper(ticker)),
    query = list(method = method, limit = as.integer(limit),
                 min_lookback_days = as.integer(min_lookback_days))
  )
  if (!is.null(resp$neighbors)) resp$neighbors <- fw_to_df(resp$neighbors)
  resp
}

#' Forward-return labels (PRO+)
#' @param client A \code{factorweave_client}.
#' @param ticker Ticker symbol.
#' @return A \code{data.frame} of (date, fwd_ret_1d, fwd_ret_5d, fwd_ret_20d, ...).
#' @export
fw_labels <- function(client, ticker) {
  resp <- fw_request(client, sprintf("/labels/%s", toupper(ticker)))
  fw_to_df(resp$labels %||% resp)
}

fw_to_df <- function(x) {
  if (is.null(x) || length(x) == 0) return(data.frame())
  if (is.data.frame(x)) return(x)
  if (is.list(x) && length(x) > 0 && is.list(x[[1]])) {
    return(do.call(rbind, lapply(x, function(r) as.data.frame(r, stringsAsFactors = FALSE))))
  }
  as.data.frame(x, stringsAsFactors = FALSE)
}
