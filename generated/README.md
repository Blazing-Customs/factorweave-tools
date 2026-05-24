# Generated Factor Weave clients

Auto-generated clients for the [Factor Weave API](https://factorweave.com/api/docs), produced by [openapi-generator](https://openapi-generator.tech/) from the live [OpenAPI 3.0 spec](https://factorweave.com/api/openapi.json).

| Language | Path | Generator | Status |
| --- | --- | --- | --- |
| Go | [`go/`](./go) | `go` | ✅ Committed |
| Rust | [`rust/`](./rust) | `rust` (reqwest, async) | ✅ Committed |
| Ruby | [`ruby/`](./ruby) | `ruby` | ✅ Committed |
| PHP | [`php/`](./php) | `php` | ✅ Committed |
| Dart / Flutter | [`dart/`](./dart) | `dart` | ✅ Committed |
| Java | — | `java` | ⏳ Run `bash scripts/regenerate_clients.sh java` |
| C# / .NET | — | `csharp` | ⏳ Run `bash scripts/regenerate_clients.sh csharp` |
| Kotlin | — | `kotlin` | ⏳ Run `bash scripts/regenerate_clients.sh kotlin` |
| Swift | — | `swift5` | ⏳ Run `bash scripts/regenerate_clients.sh swift` |

The committed five are the ones with the broadest audience for a quant data API; the rest live one command away. Add more languages by extending `GENERATORS` in `scripts/regenerate_clients.sh`.

## Regenerating

After any change to the OpenAPI spec (`factorweave-app/src/OpenApi.php`) and a deploy:

```bash
bash scripts/regenerate_clients.sh             # all configured langs
bash scripts/regenerate_clients.sh go rust     # subset
```

Output goes here, then `scripts/sync_tools_repo.sh` mirrors to the public umbrella repo (`factorweave-tools/generated/`).

## Important — these are *generated*, not hand-written

For each language above we also offer (or plan to offer) a hand-written first-party SDK with a curated interface:

- **Python** — `pip install factorweave` ([sdk/python](../python))
- **TypeScript / JavaScript** — `npm install @blazing-customs/factorweave` ([sdk/typescript](../typescript))
- **R** — `install.packages("factorweave", repos="https://blazing-customs.r-universe.dev")` ([sdk/r](../r))

Prefer those when available. The generated clients are for languages we don't (yet) ship a hand-written SDK in.

## License

MIT, same as the API. Generated code includes the openapi-generator boilerplate header.
