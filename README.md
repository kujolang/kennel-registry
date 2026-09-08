# Kennel Registry

Generated distribution of official Kujo package releases at https://kennel.kujolang.ai. GitHub remains the development platform. This is not a repository mirror.

`registry/` is the direct Cloudflare Pages output directory. No application server, database, Worker or object store. `official-packages.json` explicitly enrolls reviewed packages using repository names and immutable GitHub IDs. Unscoped names belong to Kujo.

## Read contracts

* `/api/v1/index.json`: small discovery summaries.
* `/api/v1/packages/<name>.json`: versions and latest stable.
* `/api/v1/packages/<name>/<version>.json`: exact release manifest.
* `/packages/<name>/<version>/{package.tar.gz,manifest.json,checksums.txt,provenance.json}`.
* `/<name>` and `/<name>/<version>`: human pages; `/<name>.md`: agent overview.

Future identities use `@scope/name` in these routes. Metadata already distinguishes scope, owner type/ID and official status. Accounts and third-party publishing are unavailable. Dynamic publishing/storage may replace Git-backed writes without changing read URLs or lock semantics.

## Publishing and backfill

The central implementation lives in `kujolang/kennel/scripts/registry` and `.github/workflows/publish-kennel-package.yml`. Only published GitHub Releases qualify. Tag pushes do not publish packages. The registry reconciles releases every 15 minutes and supports manual `releases.yml` dispatch with optional package and existing release ID. Both use the same builder; no test releases are created.

The workflow fetches the exact tag commit, verifies enrollment/version, packages tracked Git blobs using Kujo include/exclude controls, normalizes USTAR+gzip, computes digests, records release/workflow provenance, validates the registry and publishes one atomic Git commit. Pages Git integration deploys that commit. A final check waits for production discovery and verifies archive digests.

Changebucket v1.0.0 was historically named ChangeBudget. Its exact release has `kujo.toml`, not `kennel.toml`. A commit-pinned policy permits a generated distribution manifest; provenance records its digest and original identity. Released code remains unchanged. The CLI is `changebudget.kujo`; this release did not declare a license.

## Immutability and recovery

Never casually edit published version directories or exact version JSON. Same version/different archive or source is rejected. Identical retries preserve the first complete publication and its provenance. Regenerate mutable discovery/human pages with the central generator. Restore damaged immutable files from the last verified Git commit, review digests/release IDs and push one recovery commit. Do not silently rebuild or replace history.

Enrollment requires reviewing suitability as a public reusable Kujo package, obtaining its repository ID, adding an explicit policy entry and verifying a real release. Do not enroll websites, infrastructure, experiments or all organization repositories automatically.

## Deployment and trust

Pages production branch: `main`; build command: none; output: `registry`; domain: `kennel.kujolang.ai`. `_headers` and `404.html` are source controlled. No SPA fallback or expanded source deployment. Current limits: archive 8 MiB, expanded USTAR 64 MiB, 10,000 files. Stable URLs permit future object storage if actual limits require it.

Provenance statements bind archive/release identity through the trusted HTTPS registry. They are not independent cryptographic signatures. Registry write access and publishing automation remain the trust root. Clients verify archive and provenance digests before staging and replacement.

Production activated 2026-09-08. The Git-connected Pages project is `kennel-registry`; the verified deployment settings are recorded in `cloudflare-pages.json`. DNS and TLS are active for `kennel.kujolang.ai`. Consumer install acceptance uses the updated Kennel client from its main branch with Kujo 1.3.1 or newer; historical Kennel package releases retain their original client behavior. No historical release was rewritten to include new registry support.
