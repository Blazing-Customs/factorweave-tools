# Factor Weave — Postman / Insomnia / Bruno collection

Auto-generated from the live [OpenAPI 3.0 spec](https://factorweave.com/api/openapi.json) via [openapi-to-postmanv2](https://github.com/postmanlabs/openapi-to-postman). Every Factor Weave endpoint (30+ requests across 21 groups) is pre-wired with the right method, parameters, request body shape, and auth header pattern — just plug in your API key and click Send.

Works in any client that imports the **Postman Collection v2.1** format:

- [Postman](https://www.postman.com/)
- [Insomnia](https://insomnia.rest/) (it imports Postman collections natively)
- [Bruno](https://www.usebruno.com/) (open-source, file-based — pass through the Postman importer)
- VS Code extensions like *Thunder Client* and *REST Client* that read Postman v2.1

## Setup

1. **Get an API key.** Sign up at [factorweave.com](https://factorweave.com/) (250 calls/day free, no card), then Profile → API Access → mint a long-lived `fw_live_…` key.
2. **Import the collection.**
   - Postman: *Import* → drop in [`factorweave.postman_collection.json`](./factorweave.postman_collection.json)
   - Insomnia: *Import / Export* → *Import Data* → *From File*
   - Bruno: *Collection* → *Import Collection* → choose Postman format
3. **Import the environment** (optional but recommended): [`factorweave.postman_environment.json`](./factorweave.postman_environment.json). This defines `{{baseUrl}}`, `{{apiKey}}`, `{{bearerToken}}`, `{{ticker}}` variables you can reference across requests.
4. **Paste your key.** Open the environment, set `apiKey` to your `fw_live_…` value.
5. **Click Send** on `health` (under the *health* group) — expect HTTP 200 and a JSON body confirming the API is reachable.

## Auth

Every authed endpoint has two `Authorization` patterns the spec declares:

- `X-API-Key: fw_live_…` — long-lived dev key (preferred)
- `Authorization: Bearer <jwt>` — short-lived JWT from `POST /auth/login`

The imported collection uses **header auth** out of the box; configure your environment's `apiKey` to populate the `X-API-Key` header automatically on each request. (Postman: *Authorization* tab on a request → *Type: API Key* → *Key: X-API-Key, Value: {{apiKey}}, Add to: Header* — applies to the collection root.)

## Regenerating

When the OpenAPI spec changes:

```bash
curl -fsSL https://factorweave.com/api/openapi.json -o /tmp/fw-openapi.json
npx openapi-to-postmanv2 \
  -s /tmp/fw-openapi.json \
  -o sdk/postman/factorweave.postman_collection.json \
  -p   # pretty-print
```

## What's in the collection

21 endpoint groups · 30 requests · v2.1 schema:

- **Public** — health, status, manifest, config, demo, auth (register/login), mcp
- **Account** — me, billing, usage, recent-activity
- **Data** — features, top, csv, vector-search, labels
- **Derived analytics** — market-context, report-card, risk-cluster, embedding
- **Alerts** — alert rules (CRUD)

For the conceptual reference (when to use which endpoint), see the [docs](https://factorweave.com/#docs).

## License

MIT. The OpenAPI spec itself is also published as MIT.
