# Changelog

Record notable changes to the reusable template. Target-specific audit results belong in that audit workspace's session log and findings, not here.

## Unreleased

_No entries yet._

## 0.2.0 — 2026-11-12

### Changed
- Local-first audit architecture: use a short AGENTS.md entrypoint and load only the active candidate's files instead of the full investigation history.
- Introduce research/STATUS.md as the compact cross-session resume checkpoint; reset the reusable research/SESSION_LOG.md to an empty target-audit log, with previous template history retained in Git.
- Split the unbounded research/hypotheses.md document into a compact permanent-ID index plus one dossier per candidate under research/hypotheses/H-###.md.
- Simplify README and retain a dependency-free, script-assisted local workflow without mandatory CI or template-wide tooling.
- Update links in architecture, known issues, PoC and finding/report templates to the per-candidate layout.
- Explicitly preserve standing user audit approval, target-specific remote testing rights, and the production-write prohibition.
- Clarify standing user approval for all otherwise-permitted AI audit work: no redundant per-case permission prompts for source research, public-state reads, local forks, fuzzing, or permitted remote tests.
- Clarify that shared remote testnets/staging require the target owner's program/engagement grant; the template cannot authorize third-party access, and uncertainty about remote testing never blocks meaningful isolated local work.
- Allow ordinary published public-chain read-only queries within provider terms without a blanket written-production-read requirement; continue prohibiting production writes, live-state changes, and real-fund movements.
- Allow broad reproduction by default in isolated local environments and on non-production deployments of the in-scope target, including RPC-backed forks, public/shared target testnets, and test/staging deployments; permit state changes, synthetic role tests, fuzzing, and exploit chains, subject to explicit program limits and provider terms.
- Keep production writes prohibited and production reads separately authorized; require separate authorization only when testing a third-party service or asset itself.
- Replace the per-activity testing authorization matrix with a concise scope record for target identity, explicit program exclusions, special limits, and stop conditions; remove per-method and per-case permission gates.
- Remove the arbitrary three-hypothesis cap; require a code-grounded attack-surface queue and a case-by-case validation coverage plan before closure.
- Add linked program-eligibility and public/local duplicate screening so confirmed behavior is not mistaken for bounty-eligible novelty.
- Clarify that `.env` supports credentials and endpoints for the whole audit workflow, including research services and audit tools as well as target test identities.
- Separate bounty eligibility from novelty/duplicate status and replace ambiguous case `pass`/`fail` labels with evidence-oriented dispositions; require every inventoried attack surface to map to a hypothesis or a documented no-candidate rationale.

## 0.1.0 — 2026-10-15

### Added
- Initial semantic version and immutable tag-based distribution guidance.
- Per-activity scope permissions, hypothesis closure requirements, PoC and evidence-run templates, and a helper for preparing run manifests.
- Blockchain-specific research guidance for recent comparable fund-loss incidents.
- Finding author tracking and a submission report template with source-code context in the root-cause section.
- Production read-only scope capture and an explicit prohibition on production writes and persistent state changes.
