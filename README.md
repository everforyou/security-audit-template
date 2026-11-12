# [Target name] — local-first security audit

A small, dependency-free **one-target** workspace for Codex or a human researcher. The repository is a documentation/evidence scaffold, not a scanner or a remote-testing authorization. Use the target's own development tools for builds and PoCs; no GitHub Actions or template-wide runtime is required.

## Target metadata

- Project / vendor: TODO
- Initial and latest program launch/update: TODO / TODO
- Bounty range and official policy: TODO
- Source, exact commit/version, deployment/chain (if relevant): TODO
- Technology and runtime: TODO
- Authorization / engagement: TODO (details in [SCOPE.md](SCOPE.md))
- Researcher: TODO
- Template origin tag or commit: TODO

## Local quickstart

1. Complete [SCOPE.md](SCOPE.md) from the current program or engagement. Standing workspace-owner approval allows public research and isolated local tests without per-case prompts; remote active tests must also be covered by the target's actual authorization. **No production writes or real-fund movement.**
2. Place the authorized source checkout or test artifact in target/ (ignored by Git). Pin and record the **exact** upstream commit/release, dependencies, compiler/runtime, and any deployment-specific configuration. Do not modify the baseline; create exploratory code under poc/ or scripts/.
3. Optionally copy .env.example to .env and set only the required credentials/endpoints. .env is ignored. Never commit or echo secrets to evidence.
4. Write the real commands below, run a local baseline, and map the attack surface in [research/architecture.md](research/architecture.md).
5. Record code-grounded H-### candidates in [research/hypotheses.md](research/hypotheses.md). Use **one dossier per candidate** in research/hypotheses/H-###.md, with its tests in poc/H-###/ and immutable run records in evidence/H-###/runs/.
6. For each investigation session, open [AGENTS.md](AGENTS.md), SCOPE.md, and the short [research/STATUS.md](research/STATUS.md). Load only the active candidate and relevant references; update STATUS.md and append to SESSION_LOG.md at the end.

## Commands (fill from the actual target)

~~~sh
# Fetch/pin target: TODO
# Setup/install: TODO
# Build: TODO
# Baseline tests: TODO
# Local reproduction: TODO
# Optional: scripts/new-evidence-run.sh H-001
~~~

The evidence-run helper only creates a unique local manifest folder; it **does not execute a PoC** or contact an external target. See [evidence/README.md](evidence/README.md).

## Where information lives

| Path | Purpose |
| --- | --- |
| AGENTS.md | Short AI entrypoint and work loop |
| SCOPE.md | One canonical policy, target version, environment and authorization record |
| research/STATUS.md | Small current checkpoint for fast resume |
| research/architecture.md | Attack-surface inventory and invariants |
| research/hypotheses.md | Compact permanent-ID queue and current dispositions |
| research/hypotheses/H-###.md | One detailed candidate, coverage plan, attempts and evidence links |
| research/known-issues.md | Program exclusions, previous work, incident research and duplicate review |
| research/SESSION_LOG.md | Concise per-audit chronological log, not the template's development log |
| poc/H-###/ | Static source, fixtures and instructions for candidate reproduction |
| evidence/H-###/runs/ | Sanitized immutable evidence records |
| findings/ and reports/ | Confirmed dossiers, permanent finding register and private report templates |
| scripts/ | Optional local-only helper scripts |
| target/ | Ignored upstream checkout; never commit secrets or third-party source inadvertently |

Keep target audit workspaces private unless publication is authorized. Do not copy confidential work between engagements.

## Template provenance

The root [VERSION](VERSION) and [CHANGELOG.md](CHANGELOG.md) describe the reusable template, not the target. Use immutable vMAJOR.MINOR.PATCH tags for published template snapshots and record the source tag/commit when creating an audit workspace. Version 0 minor releases may reorganize the scaffold; do not auto-migrate an existing engagement or renumber its hypothesis/finding IDs. Earlier single-file hypothesis records can remain in older target workspaces until deliberately migrated.
