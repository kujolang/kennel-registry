# Ecosystem enrollment — 2026-09-08

Sources: https://kujolang.ai/ecosystem/primitives/ and https://kujolang.ai/ecosystem/tooling/. Reviewed actual public GitHub Releases, exact commit trees, package controls and dependency identities.

36 packages (38 real released versions) are enrolled. No releases were fabricated. Initial backfill selects reviewed stable releases; older unrelated releases are not silently repackaged.

| Package | Latest registry version |
| --- | --- |
| [ability](https://kennel.kujolang.ai/ability) | 1.1.0 |
| [agents-sdk](https://kennel.kujolang.ai/agents-sdk) | 1.0.0 |
| [ai-sdk](https://kennel.kujolang.ai/ai-sdk) | 1.0.0 |
| [assetworks](https://kennel.kujolang.ai/assetworks) | 0.2.0 |
| [bluepencil](https://kennel.kujolang.ai/bluepencil) | 0.2.0 |
| [casefile](https://kennel.kujolang.ai/casefile) | 1.0.0 |
| [changebucket](https://kennel.kujolang.ai/changebucket) | 1.0.0 |
| [concord](https://kennel.kujolang.ai/concord) | 1.0.0 |
| [contentgraph](https://kennel.kujolang.ai/contentgraph) | 0.3.0 |
| [dossier](https://kennel.kujolang.ai/dossier) | 0.2.0 |
| [eval](https://kennel.kujolang.ai/eval) | 1.0.0 |
| [fence](https://kennel.kujolang.ai/fence) | 1.0.0 |
| [galleypack](https://kennel.kujolang.ai/galleypack) | 0.2.0 |
| [howl](https://kennel.kujolang.ai/howl) | 1.1.0 |
| [kennel](https://kennel.kujolang.ai/kennel) | 1.0.1 |
| [lens](https://kennel.kujolang.ai/lens) | 1.1.0 |
| [mcp](https://kennel.kujolang.ai/mcp) | 1.1.1 |
| [muzzle](https://kennel.kujolang.ai/muzzle) | 1.1.0 |
| [packwrite](https://kennel.kujolang.ai/packwrite) | 1.1.0 |
| [patchbrief](https://kennel.kujolang.ai/patchbrief) | 1.0.1 |
| [presswire](https://kennel.kujolang.ai/presswire) | 0.2.0 |
| [rag](https://kennel.kujolang.ai/rag) | 1.0.0 |
| [readersignal](https://kennel.kujolang.ai/readersignal) | 0.2.0 |
| [redact](https://kennel.kujolang.ai/redact) | 1.0.0 |
| [runledger](https://kennel.kujolang.ai/runledger) | 1.1.0 |
| [scent](https://kennel.kujolang.ai/scent) | 1.0.0 |
| [scout](https://kennel.kujolang.ai/scout) | 1.0.0 |
| [searchbridge](https://kennel.kujolang.ai/searchbridge) | 1.0.0 |
| [shipcheck](https://kennel.kujolang.ai/shipcheck) | 1.0.0 |
| [sitekit](https://kennel.kujolang.ai/sitekit) | 1.0.0 |
| [siteprobe](https://kennel.kujolang.ai/siteprobe) | 0.3.0 |
| [spec](https://kennel.kujolang.ai/spec) | 1.0.1 |
| [storydesk](https://kennel.kujolang.ai/storydesk) | 0.2.0 |
| [versionseal](https://kennel.kujolang.ai/versionseal) | 0.2.0 |
| [watchdog](https://kennel.kujolang.ai/watchdog) | 1.0.1 |
| [workcell](https://kennel.kujolang.ai/workcell) | 1.1.0 |

## Coverage boundaries

- Dispatch 1.2.0: pending a decision about bundling its exact pinned, unreleased AI SDK source. Substituting AI SDK 1.0.0 would change the declared source commit. Dispatch remains unpublished until this is resolved.
- Kujo: Rust compiler/runtime, distributed through the [official runtime installation surface](https://kujolang.ai/ecosystem/kujo/); not presented as an interpreted Kennel dependency.
- Kujo for Paperclip: npm/Paperclip plugin, installed through its [official plugin instructions](https://kujolang.ai/ecosystem/paperclip/); not a Kennel runtime package.
- Leash and Ward: the public catalog explicitly states their repositories are private and public installation is unavailable. No private source was exposed.

## Packaging adaptations

Commit-pinned release_manifests records authorize a generated kennel.toml for releases with a different manifest or no package manifest. Each record binds the original manifest digest; provenance records both source and generated manifest digests. Source files retain their released bytes. Names, versions and licensing are not fabricated: versions come from actual Release tags; undeclared licenses remain empty unless the released license text establishes MIT.

MCP 1.1.1 pins Ability commit 4aa354da8d02b027c459f692f69b523f96e97056. That commit is exactly Ability v1.0.1, which is included alongside v1.1.0. The generated MCP distribution manifest resolves the same dependency through an immutable Kennel URL.

catalog.json provides reviewed, mutable package discovery descriptions without changing immutable version manifests or archives. New release publication still requires a valid kennel.toml or a reviewed release-manifest adaptation; the scheduler fails closed on unsupported source metadata.

## Verification

Local deterministic package builds passed for all 34 new package names. GitHub reconciliation run [34258829008](https://github.com/kujolang/kennel-registry/actions/runs/34258829008) published the backfill atomically and passed production index/archive verification. All-package fresh and cached install results are recorded in the client acceptance report; the test deliberately disables Git to detect hidden source fallback.
