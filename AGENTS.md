# Codex instructions — local-first security audit

This workspace covers **one authorized target**. Keep the workflow fast, evidence-first, and technology-neutral. Do not assume every audit is a smart contract. Only load documents and test artifacts needed for the current task.

## Start and resume efficiently

1. Read this file, [SCOPE.md](SCOPE.md), and [research/STATUS.md](research/STATUS.md). Read [README.md](README.md) when setting up a new workspace or when its commands change.
2. Establish the exact source revision and current program policy. Missing remote test permission does **not** stop public research or isolated local work.
3. Open [research/architecture.md](research/architecture.md), the compact [hypothesis index](research/hypotheses.md), and **only the active hypothesis dossier** under research/hypotheses/. Consult historical session entries or old evidence runs only when they are relevant.
4. Resume the highest-priority unresolved hypothesis unless a documented scope change or stronger evidence justifies reprioritizing. Never reset the queue merely because a PoC failed.

## Standing approval and boundaries

- The workspace owner grants standing approval for **all otherwise-permitted audit work**; do not ask for permission for every hypothesis, tool, test, input, role, or local reproduction. Public source/bytecode review, published on-chain reads, isolated builds, local/offline/RPC-backed forks, synthetic identities, fuzzing, and exploit simulations can proceed within their lawful and authorized limits.
- The owner's approval does **not** confer rights to actively test third-party services. Before active testing on a shared testnet, staging endpoint, or other remote asset, establish that its actual program or engagement permits the asset and activity; record restrictions once in SCOPE.md, then proceed without repeated user prompts. Observe provider terms, rate limits, exclusions, stop conditions, and data boundaries.
- Never perform production writes, broadcast transactions, move real funds, or mutate live production state. Public, non-sensitive chain reads through published interfaces are allowed under provider terms; nonpublic/authenticated production access or active probing needs separate target-owner authorization. Never access real user data without such authority.
- If a remote case is unauthorized or uncertain, hold **that case only** and continue source review, local testing, and other permitted investigations.
- Keep target/ as an unchanged upstream baseline. Put experiments in poc/ or scripts/. Never commit credentials, sensitive user information, or unsanitized exploit material. Do not publish findings, submit reports, contact vendors, or create external issues without the user's explicit instruction.

SCOPE.md is the **single source of truth** for target identity, engagement rules, remote permissions, and exclusions. Do not duplicate or silently broaden its grants in other files.

## Minimal audit loop

1. **Scope and baseline:** Capture official program source and date, eligible impact, exclusions, exact target commit/deployment, existing audits and known issues. Obtain target source or a legitimate artifact under ignored target/; record setup/build/baseline commands in README.md. Use local tools first.
2. **Architecture:** Inspect real entry points, caller permissions, assets, state transitions, sinks, dependencies, trust boundaries, and security invariants. Inventory material code paths in research/architecture.md. Link each path to a code-grounded hypothesis or a documented no-candidate rationale; keep unresolved gaps visible.
3. **Queue:** Assign permanent H-### IDs in research/hypotheses.md; create one research/hypotheses/H-###.md dossier from the [hypothesis template](research/hypotheses/HYPOTHESIS_TEMPLATE.md). Do not cap the number of credible candidates or recycle IDs. Rank by plausible impact, reachable attack path, novelty, and bounty eligibility. For blockchain targets, examine comparable fund-loss incidents and map their mechanisms to actual target code before proposing a hypothesis.
4. **Investigate:** For the active dossier, trace source-level reachability and define a falsifiable claim, attacker capability, invariant, and coverage plan. Exercise material roles, state/configuration variants, input boundaries, ordering, and environments. Keep control/negative cases that prove the harness reached the intended path. Never treat a setup failure, timeout, or single passing test as disproof.
5. **Reproduce:** Put static PoC source in poc/H-###/. For **every material attempt**, call scripts/new-evidence-run.sh H-### before the run and record the exact target revision, PoC hash, commands, expected/observed results, tested cases, sanitized evidence, and interpretation in its immutable evidence/H-###/runs/<run-id>/manifest.yaml. Never overwrite a run. Test against unmodified source; document exploratory patches separately.
6. **Decide:** Mark cases supports, counterevidence, inconclusive, blocked, or not applicable. A hypothesis is confirmed only after demonstrating a realistic attacker path and meaningful security-boundary violation. Disproven requires evidence across every material case. A blocked environment blocks only that case while other testing remains possible. Preserve unresolved, deferred, and out-of-scope histories with precise reasons and next actions.
7. **Report:** Create a finding dossier and permanent F-### register entry **only for demonstrated issues**. Keep technical validation, prior-art/novelty, bounty eligibility, submitted status, and official program feedback independent. Recheck current policy and duplicates before labeling a report submission-ready. Use reports/SUBMISSION_TEMPLATE.md only when needed; do not send without instruction.
8. **Checkpoint:** At the end of each session, update the short research/STATUS.md first (focus, latest evidence, next action), then append a concise entry to research/SESSION_LOG.md. Keep large logs and traces in canonical evidence folders, not in these summaries.

## Quality and performance guardrails

- Prefer targeted source reads, search, and bounded test cases over broad, repeated context loads or redundant scans. Run only relevant local test commands; broaden coverage for a documented reason.
- Record both evidence for and evidence against a candidate. A reproduced symptom is not a confirmed High/Critical vulnerability until realistic permissions, path reachability, and impact are established. Never invent severity or payout eligibility.
- Keep target-specific material inside this private engagement workspace. Reuse only sanitized, target-independent methods outside it when permitted by disclosure terms.
- Authoritative detail lives where it is used: SCOPE.md (rules), research/hypotheses/HYPOTHESIS_TEMPLATE.md (candidate and closure requirements), evidence/README.md (run custody), findings/README.md (finding IDs/status), and reports/SUBMISSION_TEMPLATE.md (report format). Do not inflate this entrypoint with those full templates.
