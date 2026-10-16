# [Target name] — security audit

A standalone Codex workspace for **one** authorized security audit. Supported targets include applications, APIs, libraries, services, infrastructure, cloud configurations, cryptographic systems, blockchain protocols, and more.

## Target metadata
- Project / vendor: TODO
- First Program Launch date: TODO
- Recent Program Launch date: TODO
- Reward range: TODO
- Target repository or artifact: TODO
- Exact commit, release, image digest, or deployed version: TODO
- Technology / deployment: TODO
- Authorization / engagement: TODO
- Researcher: TODO

## Template version and distribution

The root [`VERSION`](VERSION) file identifies this reusable template, not the audited target; the target's exact version belongs in `SCOPE.md`. Track notable template changes in [`CHANGELOG.md`](CHANGELOG.md).

Use semantic versions in `MAJOR.MINOR.PATCH` form. While the major version is `0`, minor releases may change the workflow or file structure; patch releases contain corrections that do not change the workflow. Once the template reaches `1.0.0`, use major releases for incompatible workflow or format changes, minor releases for backward-compatible additions, and patch releases for corrections.

Distribute snapshots from version tags named `vMAJOR.MINOR.PATCH` and do not move a published tag. When creating a target-specific audit workspace, record the template tag or source commit in that workspace so its starting point can be identified. Do not bump the template version for changes confined to a target-specific audit workspace.

## Getting started
1. Populate `SCOPE.md` with authorization, exact assets, environments, identities, permitted test methods, limits, stop conditions, and exclusions. Use its testing matrix to document the broadest written authorization available without inferring permission.
2. Place a checkout or supplied test artifact under `target/` (ignored by this template's Git history).
3. If authorized tools need credentials, copy `.env.example` to `.env` and fill only the variables those tools use. Keep target-specific credentials within this engagement; use shared audit-tool credentials only where the service terms and `SCOPE.md` allow. Never commit `.env` or include credentials in evidence or logs. Possessing a credential does not grant permission beyond `SCOPE.md`.
4. Record actual setup/build/test commands below after inspecting the target.
5. Open this project root in Codex and ask it to read `AGENTS.md`, `README.md`, and `SCOPE.md`.
6. Keep hypotheses in `research/`, independently validated vulnerabilities in `findings/`, hypothesis-specific test code in `poc/H-###/`, and sanitized per-run evidence in `evidence/H-###/runs/<UTC-run-id>/`. Use `scripts/new-evidence-run.sh H-###` to prepare a unique run folder and manifest for every material attempt; link the manifest from the hypothesis record. Keep summaries concise and link to the canonical run record instead of duplicating logs. For each validated finding, create `findings/<finding-slug>/`, copy [`findings/FINDING_TEMPLATE.md`](findings/FINDING_TEMPLATE.md) there as `FINDING.md`, assign the next permanent ID in [`findings/README.md`](findings/README.md), and link the relevant hypothesis IDs, PoC instructions, and run manifests. Keep technical, submission, and program-response statuses current in the register. Maintain reusable cross-hunt methods in a separate location outside this one-target workspace; only reuse sanitized, target-independent material after checking disclosure terms.

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
- `.env.example` — optional credential-variable names; keep real values in the ignored local `.env`
- `target/` — locally obtained baseline; not committed
- `research/` — architecture, hypotheses, incident-informed public research, prior work, session log
- `findings/` — demonstrated and documented security findings; `findings/README.md` is the permanent ID, title, submission, and program-response register
- `poc/` — isolated reproduction code and setup instructions, grouped by hypothesis ID, with target-specific shared helpers in `poc/shared/`
- `scripts/` — auxiliary analysis scripts
- `evidence/` — sanitized, immutable run records, manifests, traces, logs, and screenshots, grouped by hypothesis ID
- `reports/` — copy-ready email/report template with an explicit Proof of Concept section; copy its message body into the email and attach PoC/evidence separately, not the report Markdown

**Confidentiality:** keep per-target audit repos private unless public release is approved; the reusable template itself can be public.
