# Changelog

Record notable changes to the reusable template. Target-specific audit results belong in that audit workspace's session log and findings, not here.

## Unreleased

### Changed
- Allow broad reproduction by default in isolated local environments and on non-production deployments of the in-scope target, including RPC-backed forks, public/shared target testnets, and test/staging deployments; permit state changes, synthetic role tests, fuzzing, and exploit chains, subject to explicit program limits and provider terms.
- Keep production writes prohibited and production reads separately authorized; require separate authorization only when testing a third-party service or asset itself.
- Replace the per-activity testing authorization matrix with a concise scope record for target identity, explicit program exclusions, special limits, and stop conditions; remove per-method and per-case permission gates.
- Remove the arbitrary three-hypothesis cap; require a code-grounded attack-surface queue and a case-by-case validation coverage plan before closure.
- Add linked program-eligibility and public/local duplicate screening so confirmed behavior is not mistaken for bounty-eligible novelty.

## 0.1.0 — 2026-10-15

### Added
- Initial semantic version and immutable tag-based distribution guidance.
- Per-activity scope permissions, hypothesis closure requirements, PoC and evidence-run templates, and a helper for preparing run manifests.
- Blockchain-specific research guidance for recent comparable fund-loss incidents.
- Finding author tracking and a submission report template with source-code context in the root-cause section.
- Production read-only scope capture and an explicit prohibition on production writes and persistent state changes.
