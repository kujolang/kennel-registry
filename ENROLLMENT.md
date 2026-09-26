# Ecosystem enrollment — updated 2026-09-13

Sources: https://kujolang.ai/ecosystem/primitives/ and https://kujolang.ai/ecosystem/tooling/. Reviewed actual public GitHub Releases, exact commit trees, package controls and dependency identities.

45 packages (58 released versions, including one prerelease) are enrolled. No releases were fabricated. Initial backfill selects reviewed releases; older unrelated releases are not silently repackaged.

| Package | Latest registry version |
| --- | --- |
| [ability](https://kennel.kujolang.ai/ability) | 1.1.0 |
| [agents-sdk](https://kennel.kujolang.ai/agents-sdk) | 1.0.0 |
| [ai-sdk](https://kennel.kujolang.ai/ai-sdk) | 1.0.0 |
| [anthropic](https://kennel.kujolang.ai/anthropic) | 0.1.2 |
| [assetworks](https://kennel.kujolang.ai/assetworks) | 0.3.0 |
| [bluepencil](https://kennel.kujolang.ai/bluepencil) | 0.3.0 |
| [casefile](https://kennel.kujolang.ai/casefile) | 1.0.0 |
| [changebucket](https://kennel.kujolang.ai/changebucket) | 1.1.0 |
| [cms](https://kennel.kujolang.ai/cms) | 1.1.0 |
| [concord](https://kennel.kujolang.ai/concord) | 1.0.0 |
| [contentgraph](https://kennel.kujolang.ai/contentgraph) | 0.3.0 |
| [crud-api](https://kennel.kujolang.ai/crud-api) | 1.0.0 |
| [dispatch](https://kennel.kujolang.ai/dispatch) | 1.2.0 |
| [dossier](https://kennel.kujolang.ai/dossier) | 0.2.0 |
| [eval](https://kennel.kujolang.ai/eval) | 1.0.0 |
| [fence](https://kennel.kujolang.ai/fence) | 1.0.0 |
| [galleypack](https://kennel.kujolang.ai/galleypack) | 0.2.0 |
| [howl](https://kennel.kujolang.ai/howl) | 1.1.0 |
| [kennel](https://kennel.kujolang.ai/kennel) | 1.1.0 |
| [lens](https://kennel.kujolang.ai/lens) | 1.1.0 |
| [mcp](https://kennel.kujolang.ai/mcp) | 1.1.1 |
| [muzzle](https://kennel.kujolang.ai/muzzle) | 1.1.0 |
| [ollama](https://kennel.kujolang.ai/ollama) | 0.1.10 |
| [packwrite](https://kennel.kujolang.ai/packwrite) | 1.1.0 |
| [patchbrief](https://kennel.kujolang.ai/patchbrief) | 1.0.1 |
| [presswire](https://kennel.kujolang.ai/presswire) | 0.2.0 |
| [rag](https://kennel.kujolang.ai/rag) | 1.0.0 |
| [readersignal](https://kennel.kujolang.ai/readersignal) | 0.3.0 |
| [redact](https://kennel.kujolang.ai/redact) | 1.1.0 |
| [relay](https://kennel.kujolang.ai/relay) | 1.1.0 |
| [runledger](https://kennel.kujolang.ai/runledger) | 1.1.0 |
| [scent](https://kennel.kujolang.ai/scent) | 1.0.0 |
| [scout](https://kennel.kujolang.ai/scout) | 1.1.0 |
| [searchbridge](https://kennel.kujolang.ai/searchbridge) | 1.0.0 |
| [shipcheck](https://kennel.kujolang.ai/shipcheck) | 1.0.0 |
| [sitekit](https://kennel.kujolang.ai/sitekit) | 1.0.0 |
| [sitekit-docs-template](https://kennel.kujolang.ai/sitekit-docs-template) | 1.0.0 |
| [siteprobe](https://kennel.kujolang.ai/siteprobe) | 0.4.0 |
| [spec](https://kennel.kujolang.ai/spec) | 1.0.1 |
| [ssg](https://kennel.kujolang.ai/ssg) | 1.0.0 |
| [storydesk](https://kennel.kujolang.ai/storydesk) | 0.3.0 |
| [tribunal](https://kennel.kujolang.ai/tribunal) | 1.0.1 |
| [versionseal](https://kennel.kujolang.ai/versionseal) | 0.3.0 |
| [watchdog](https://kennel.kujolang.ai/watchdog) | 1.0.1 |
| [workcell](https://kennel.kujolang.ai/workcell) | 1.1.0 |

## Coverage boundaries

The September 25 organization-wide inventory covers all 100 repositories. The September 26 dependency follow-up brings coverage to 45 enrolled public packages, 29 public repositories without stable published releases, 15 public projects using other installation surfaces, and 11 private repositories. [release-audit.json](release-audit.json) records every public repository and its disposition. Tags without GitHub Releases do not qualify as registry package releases, but a released package may retain exact Git dependencies.

- Dispatch 1.2.0 retains AI SDK commit `849dbbbba7a734938320dd9569d1ed7aa6240298`. Its legacy `ref` selector is normalized to `commit`; the source identity is unchanged.
- Anthropic 0.1.2 and Ollama 0.1.10 retain the source selected by AI SDK tag `v1.1.0`, peeled and pinned to `2295433e185e117106c9c90a1e10b5eba937955a`. The publisher verifies the tag target before building and records the original declaration and exact commit in provenance.
- **These three packages require Git and access to GitHub for their AI SDK dependency, including lock replay.** Their packages come from Kennel; the dependency comes from its exact Git commit. No AI SDK release was fabricated, no historical version was replaced, and no source-policy override is required. They are not included in the historical 42-package Git-disabled acceptance claim below.

- Kujo uses its runtime installer. Commerce, AI Chat, Pi/Paperclip/Command Code/bb integrations, CMS themes/plugins, and role/skill/workflow collections retain their documented native installation surfaces. Website repositories are not runtime packages.
- Unreleased provider libraries, Payments, Intake, and other development repositories are inventoried but not published from moving branches.
- Private repositories remain excluded; their identities and source are not exposed by the public audit.

## September 25 refresh

New enrollments: Relay 1.1.0, Tribunal 1.0.1, SSG 1.0.0, CMS 1.1.0, CRUD API 1.0.0, and SiteKit Docs Template 1.0.0. These are source packages; application setup and optional frontend dependencies still follow each released README. No global command mappings were invented.

Updates: Scout 1.1.0, Redact 1.1.0, AssetWorks 0.3.0, BluePencil 0.3.0 (plus its published 0.3.0-rc.1), VersionSeal 0.3.0, StoryDesk 0.3.0, and SiteProbe 0.4.0. The publisher's missing-manifest failure is resolved with exact-commit and source-digest adaptations for the five legacy-manifest projects. Existing version archives and exact metadata remain immutable.

All 14 new archives passed the pinned central native builder locally; the combined 42-package/55-version registry passed generator integrity validation. Production publication completed in [run 36216395687](https://github.com/kujolang/kennel-registry/actions/runs/36216395687); [run 36216401723](https://github.com/kujolang/kennel-registry/actions/runs/36216401723) passed an idempotent reconciliation. On September 26, all 55 deployed archive digests verified, and **42/42 fresh installs plus 42/42 cached lock replays passed with Git disabled** using Kujo 1.5.0 and the pinned publisher/client. All enrolled latest stable versions match GitHub Releases, and no eligible published release is missing. [Machine-readable acceptance evidence](release-acceptance.json).

## Packaging adaptations

Commit-pinned release_manifests records authorize a generated kennel.toml for releases with a different manifest or no package manifest. Each record binds the original manifest digest; provenance records both source and generated manifest digests. Source files retain their released bytes. Names, versions and licensing are not fabricated: versions come from actual Release tags; undeclared licenses remain empty unless the released license text establishes MIT.

MCP 1.1.1 pins Ability commit 4aa354da8d02b027c459f692f69b523f96e97056. That commit is exactly Ability v1.0.1, which is included alongside v1.1.0. The generated MCP distribution manifest resolves the same dependency through an immutable Kennel URL.

catalog.json provides reviewed, mutable package discovery descriptions without changing immutable version manifests or archives. New release publication still requires a valid kennel.toml or a reviewed release-manifest adaptation; the scheduler fails closed on unsupported source metadata.

## Historical September 8 verification

Local deterministic package builds passed for all 34 new package names. GitHub reconciliation run [34258829008](https://github.com/kujolang/kennel-registry/actions/runs/34258829008) published the backfill atomically and passed production index/archive verification. All-package fresh and cached install results are recorded in the client acceptance report; the test deliberately disables Git to detect hidden source fallback.

Production acceptance: **36/36 fresh installs and 36/36 cached lock replays passed with Git disabled** using the updated client and Kujo 1.3.1. The full Kennel verification profile passed, and 113 live registry documents passed JSON Schema validation. [Committed acceptance evidence](https://github.com/kujolang/kennel/blob/main/docs/registry/ecosystem-acceptance.md).

Kennel 1.1.0 was published on September 13 from commit `093d44dddcebebd99bd8987e3efcb7e044dc45a7`. The new archive and all 190 previously published immutable files were verified. [Public bootstrap acceptance](https://github.com/kujolang/kennel/actions/runs/34782478651) passes on macOS and Linux using released Kujo 1.4.0, including PATH, global commands, exact/latest/clean/cached installs, updates and failed-update rollback with Git/Python disabled.
