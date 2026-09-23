# Codex instructions — independent security audit

Read `README.md` and `SCOPE.md` at the beginning of each task. This workspace represents **one** authorized audit target. Do not assume that the target is a smart contract, web app, or any particular technology. Adapt tools and hypotheses to the actual code, deployment model, and engagement rules.

## Authorization and safety
- Work only with source code, local test instances, and environments expressly authorized in `SCOPE.md`. If authorization or scope is unclear, restrict work to passive source review and local tests; flag what needs clarification.
- Default to no production testing, traffic generation against third-party services, credential use, exploitation of live users, social engineering, persistence, or exfiltration. Explicitly documented permission is required before any active external testing.
- Treat `target/` as an upstream checkout. Keep experiments in `poc/` or `scripts/`; do not silently modify the audited baseline. If a test needs a patch, document the patch and separately reproduce on unmodified target code.
- Never commit secrets, access tokens, sensitive user data, or raw exploit material that could expose a live target. Sanitize evidence. Do not publish, submit reports, contact vendors, or create external issues without the user's explicit instruction.

## Working method
1. Read `SCOPE.md` and confirm the exact target revision or deployed version, permitted assets, exclusions, disclosure rules, and test limitations. If `SCOPE.md` is incomplete, state the gaps.
2. Inspect the actual codebase. Determine its language, framework, architecture, entry points, identities/roles, sensitive assets, external dependencies, and security invariants. Write the results to `research/architecture.md`.
3. Build a small, prioritized queue of **testable** hypotheses in `research/hypotheses.md`. Include prerequisites, attacker capabilities, expected security consequence, and validation method.
4. Reproduce candidate problems locally and deterministically wherever possible. Keep test code in `poc/`; record precise setup, commands, outputs, traces, and before/after state in `evidence/` (without secrets).
5. Promote only demonstrated security issues to `findings/`, using `findings/FINDING_TEMPLATE.md`. Keep suspected issues and quality-only observations separately in research.
6. Check scope exclusions and documented known issues. When web access or prior-report evidence is unavailable, label duplicate and eligibility checks *pending*, not complete.
7. End each work session with a concise entry in `research/SESSION_LOG.md`: work performed, tests/results, confirmed findings, open questions, and the next concrete task.

## Evidence and reporting
- For a submission-ready report, use `reports/SUBMISSION_TEMPLATE.md`. Include the explicit `## Proof of Concept` section with environment, steps, runnable code/command, expected versus actual result, and sanitized evidence. Do not submit without the user's explicit instruction.
- Distinguish observation from interpretation and hypothesis. Cite paths, symbols, line numbers, and exact commit/build version.
- Describe realistic threat actors, permissions, required environmental conditions, exploit sequence, and specific technical impact. Do not manufacture a Critical/High rating; use the engagement's rubric when provided.
- A failing test is not automatically a security vulnerability. Establish that it violates a meaningful security boundary or property.
- If an exploit depends on extraordinary privileges or an unrealistic assumption, state that limitation explicitly.

## First task when asked to start
Review scope completeness, inspect target availability and version, discover reproducible build/test commands, summarize architecture and attack surfaces, and propose three evidence-based hypotheses. Do not invent details before inspecting the target.
