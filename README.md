# [Target name] — security audit

A standalone Codex workspace for **one** authorized security audit. Supported targets include applications, APIs, libraries, services, infrastructure, cloud configurations, cryptographic systems, blockchain protocols, and more.

## Target metadata
- Project / vendor: TODO
- Target repository or artifact: TODO
- Exact commit, release, image digest, or deployed version: TODO
- Technology / deployment: TODO
- Authorization / engagement: TODO
- Researcher: TODO

## Getting started
1. Populate `SCOPE.md` with authorization, version, assets, permitted testing, and exclusions.
2. Place a checkout or supplied test artifact under `target/` (ignored by this template's Git history).
3. Record actual setup/build/test commands below after inspecting the target.
4. Open this project root in Codex and ask it to read `AGENTS.md`, `README.md`, and `SCOPE.md`.
5. Keep hypotheses in `research/`, independently validated vulnerabilities in `findings/`, tests in `poc/`, and sanitized evidence in `evidence/`. For each validated finding, create `findings/<finding-slug>/`, copy [`findings/FINDING_TEMPLATE.md`](findings/FINDING_TEMPLATE.md) there as `FINDING.md`, assign the next permanent ID in [`findings/README.md`](findings/README.md), and keep its technical, submission, and program-response statuses current there.

## Commands
```sh
# Setup: TODO
# Build: TODO
# Baseline tests: TODO
# Local PoC: TODO
```

## Workspace
- `AGENTS.md` — Codex instructions for this audit
- `SCOPE.md` — rules, authorization, exact version, assets, exclusions
- `target/` — locally obtained baseline; not committed
- `research/` — architecture, hypotheses, prior work, session log
- `findings/` — demonstrated and documented security findings; `findings/README.md` is the permanent ID, title, submission, and program-response register
- `poc/` — isolated reproduction and test harnesses
- `scripts/` — auxiliary analysis scripts
- `evidence/` — sanitized traces, logs, and screenshots

**Confidentiality:** keep per-target audit repos private unless public release is approved; the reusable template itself can be public.
- `reports/` — standalone, submission-ready vulnerability report template with an explicit Proof of Concept section
