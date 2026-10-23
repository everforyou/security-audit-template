# Changelog

Record notable changes to the reusable template. Target-specific audit results belong in that audit workspace's session log and findings, not here.

## Unreleased

### Changed
- Allow broad reproduction in isolated local environments by default, including local fork/private testnet state changes, synthetic role tests, fuzzing, and exploit chains; keep shared testnets, remote services, and production reads separately scoped.
- Clarify that production writes remain prohibited and that a local fork using a remote RPC provider involves separately scoped remote access.

## 0.1.0 — 2026-10-15

### Added
- Initial semantic version and immutable tag-based distribution guidance.
- Per-activity scope permissions, hypothesis closure requirements, PoC and evidence-run templates, and a helper for preparing run manifests.
- Blockchain-specific research guidance for recent comparable fund-loss incidents.
- Finding author tracking and a submission report template with source-code context in the root-cause section.
- Production read-only scope capture and an explicit prohibition on production writes and persistent state changes.
