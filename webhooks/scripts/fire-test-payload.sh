#!/usr/bin/env bash
# fire-test-payload.sh — POST the sample Factor Weave alert payload to a URL.
#
# Useful for verifying your webhook endpoint receives the format Factor Weave
# will send, BEFORE wiring it into a live alert rule.
#
# Usage:
#   bash fire-test-payload.sh <url>
#   bash fire-test-payload.sh https://hooks.slack.com/services/T.../B.../...
#   bash fire-test-payload.sh https://httpbin.org/post   # echoes back, useful for sanity

set -euo pipefail

URL="${1:-}"
if [[ -z "$URL" ]]; then
  cat <<'USAGE'
Usage: bash fire-test-payload.sh <url>

Examples:
  bash fire-test-payload.sh https://hooks.slack.com/services/T.../B.../...
  bash fire-test-payload.sh https://your-lambda.execute-api.us-east-1.amazonaws.com/prod/alerts
  bash fire-test-payload.sh https://httpbin.org/post

The script POSTs ../sample-payload.json with the same Content-Type and
User-Agent that the real Factor Weave alert evaluator uses.
USAGE
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PAYLOAD="$SCRIPT_DIR/../sample-payload.json"
if [[ ! -f "$PAYLOAD" ]]; then
  echo "error: sample-payload.json not found at $PAYLOAD" >&2
  exit 1
fi

echo "→ POST  $URL"
echo "→ payload from $PAYLOAD"
echo

HTTP_CODE=$(curl -sS -o /tmp/fw-fire-response.$$ -w "%{http_code}" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "User-Agent: factorweave-alerts/1.0" \
  --data-binary "@$PAYLOAD" \
  --max-time 15 \
  "$URL" || echo "000")

echo "← HTTP $HTTP_CODE"
if [[ -s /tmp/fw-fire-response.$$ ]]; then
  echo "← response body:"
  head -c 2000 /tmp/fw-fire-response.$$
  echo
fi
rm -f /tmp/fw-fire-response.$$

# Exit cleanly only on 2xx
case "$HTTP_CODE" in
  2*) echo "✓ delivered"; exit 0 ;;
  *)  echo "✗ delivery failed (HTTP $HTTP_CODE)"; exit 1 ;;
esac
