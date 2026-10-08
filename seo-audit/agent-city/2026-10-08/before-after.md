# Before and after

| Metric | Before | After |
| --- | ---: | ---: |
| canonical_pages | 120 | 120 |
| sitemap_urls | 0 | 0 |
| missing_titles | 0 | 0 |
| duplicate_titles | 0 | 0 |
| missing_descriptions | 0 | 0 |
| duplicate_descriptions | 107 | 107 |
| h1_issues | 0 | 0 |
| canonical_mismatches | 119 | 0 |
| broken_internal_links | 0 | 0 |
| orphan_pages | 118 | 118 |
| missing_alt | 0 | 0 |
| missing_dimensions | 0 | 0 |
| schema_parse_errors | 0 | 0 |

Generated counts are diagnostics. Production status counts come from a separate live crawl; the local crawler’s `production_200_pages: 0` means it did not probe production, not that the site failed.

Corrected 119 slashless canonical URLs to their live directory URLs. Existing repeated version-page descriptions and absent sitemap/JSON-LD remain optional registry-wide follow-ups. The generic crawler’s orphan count is inflated by slash normalization; these are not newly orphaned pages.
