#' Create a Factor Weave API client
#'
#' @param api_key A long-lived dev key (\code{fw_live_...}). Defaults to the
#'   \code{FACTORWEAVE_API_KEY} environment variable.
#' @param token A JWT bearer token (alternative to \code{api_key}).
#' @param base_url API base URL. Override only for staging / self-hosted.
#' @param timeout_seconds Per-request timeout. Defaults to 30.
#' @return A \code{factorweave_client} object — pass it to every \code{fw_*}
#'   data function.
#' @export
#' @examples
#' \dontrun{
#'   client <- fw_client(api_key = "fw_live_...")
#'   fw_latest_features(client, "AAPL")
#' }
fw_client <- function(api_key = NULL,
                      token = NULL,
                      base_url = "https://factorweave.com/api",
                      timeout_seconds = 30L) {
  api_key <- api_key %||% Sys.getenv("FACTORWEAVE_API_KEY", unset = NA)
  if (is.na(api_key) || identical(api_key, "")) api_key <- NULL

  structure(
    list(
      api_key = api_key,
      token = token,
      base_url = sub("/+$", "", base_url),
      timeout_seconds = as.integer(timeout_seconds)
    ),
    class = "factorweave_client"
  )
}

#' @export
print.factorweave_client <- function(x, ...) {
  authed <- if (!is.null(x$api_key)) "api_key" else if (!is.null(x$token)) "token" else "anonymous"
  cat(sprintf("<Factor Weave client> base=%s auth=%s\n", x$base_url, authed))
  invisible(x)
}

# Internal: dispatch one HTTP request and parse the JSON body.
fw_request <- function(client, path, method = "GET",
                       query = NULL, body = NULL, authed = TRUE) {
  if (!inherits(client, "factorweave_client")) {
    stop("client must be a factorweave_client (call fw_client()).", call. = FALSE)
  }
  url <- paste0(client$base_url, path)
  req <- httr2::request(url) |>
    httr2::req_method(method) |>
    httr2::req_timeout(client$timeout_seconds) |>
    httr2::req_user_agent(sprintf("factorweave-r/%s", utils::packageVersion("factorweave"))) |>
    httr2::req_headers(Accept = "application/json")

  if (!is.null(query) && length(query) > 0) {
    # Drop NULL/NA values
    keep <- !vapply(query, function(v) is.null(v) || (length(v) == 1 && is.na(v)), logical(1))
    if (any(keep)) {
      req <- httr2::req_url_query(req, !!!query[keep])
    }
  }
  if (!is.null(body)) {
    req <- httr2::req_body_json(req, body)
  }
  if (isTRUE(authed)) {
    if (!is.null(client$api_key)) {
      req <- httr2::req_headers(req, `X-API-Key` = client$api_key)
    } else if (!is.null(client$token)) {
      req <- httr2::req_headers(req, Authorization = paste("Bearer", client$token))
    }
  }
  req <- httr2::req_retry(req, max_tries = 3, is_transient = fw_is_transient)
  req <- httr2::req_error(req, body = fw_extract_error)

  resp <- httr2::req_perform(req)
  httr2::resp_body_json(resp, simplifyVector = TRUE)
}

fw_is_transient <- function(resp) {
  status <- httr2::resp_status(resp)
  status == 429L || status >= 500L
}

fw_extract_error <- function(resp) {
  status <- httr2::resp_status(resp)
  msg <- tryCatch({
    j <- httr2::resp_body_json(resp)
    j$error %||% j$message %||% httr2::resp_status_desc(resp)
  }, error = function(e) httr2::resp_status_desc(resp))
  sprintf("[%d] %s", status, as.character(msg))
}

`%||%` <- function(a, b) if (is.null(a)) b else a
