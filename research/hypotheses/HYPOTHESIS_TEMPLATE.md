# H-### — [short, source-grounded title]

Copy to research/hypotheses/H-###.md and assign a never-reused ID in [the index](../hypotheses.md). This file is the complete, **per-candidate** record; do not accumulate all cases in the index.

- **Priority / technical status:** TODO
- **Target commit, deployed version and relevant environment:** TODO
- **Component, entry point and code locations:** TODO
- **Falsifiable hypothesis:** TODO
- **Attacker-controlled action/input and privileges:** TODO
- **Required preconditions / relevant state:** TODO
- **Expected invariant and security consequence if violated:** TODO

## Source trace and competing explanations

- Entry point → permission/validation checks → state transitions → sensitive operation/sink → affected asset: TODO
- Supporting source evidence and exact line/symbol references: TODO
- Counterevidence, guards and alternative explanations: TODO
- Deployment-specific assumptions that a local-only PoC cannot settle: TODO
- Related or split H-### IDs (retain the original record when splitting): TODO

## Researcher novelty and eligibility screens

- **Eligibility status:** pending / eligible / ineligible / unclear
- Official scope / known-issue / eligible-impact / severity / PoC rules and dates checked: TODO
- **Novelty status:** pending / no match found / possible overlap / known or accepted issue / unclear
- Public advisories, audit reports, issues/PRs, release notes and search terms checked: TODO
- Local overlapping findings, hypotheses, and prior reports; meaningful differences: TODO

These are local assessments, not program decisions. Missing records or web access means the corresponding screen remains pending.

## Code-grounded coverage plan

Before testing, enumerate the conditions that could change this mechanism's outcome: material roles/permissions, entry points, boundary/empty/duplicate/reordered inputs, initialization/lifecycle state, concurrency/retries/partial failure, dependency/configuration versions, and local versus deployment-specific conditions. Mark a dimension not applicable **with a code-based reason** rather than silently omitting it. Use controls to demonstrate that the harness reaches the intended operation.

| Case | Attacker role / entry point | Input / state / configuration | Exact environment/version | Expected result and control | Status | Run ID(s) or gap |
| --- | --- | --- | --- | --- | --- | --- |
| C-01 | TODO | TODO | TODO | TODO | planned | TODO |

Case status: **planned**, **supports**, **counterevidence**, **inconclusive**, **blocked**, or **not applicable**. Supports/counterevidence describe observations about a *mechanism*, not final bounty eligibility. Invalid harness, missing fixtures, or setup failures are inconclusive, not counterevidence. If only a remote case is blocked, finish meaningful permitted local cases.

## PoC and evidence attempts

- Static PoC source and commands: poc/H-###/README.md (never mutate the baseline in target/)
- Every material attempt gets its **own** evidence/H-###/runs/<run-id>/manifest.yaml, created with scripts/new-evidence-run.sh H-### **before** execution.
- The manifest is the source of truth for the tested revision, PoC/fixture hash, clean setup, exact command, identity roles, control result, expected versus observed behavior, exit code, sanitized traces, artifact hashes, and limitations. Never overwrite a previous attempt.

| Run ID | Cases tested and control/reachability result | Observation and interpretation | Manifest path | Next action |
| --- | --- | --- | --- | --- |
| TODO | TODO | TODO | TODO | TODO |

## Technical disposition and next action

- **Current status:** untested / investigating / reproduced / confirmed / disproven / blocked / deferred / out of scope
- **Evidence-backed conclusion:** TODO (distinguish observed behavior from vulnerability and speculative live impact)
- **Coverage gaps and unresolved deployment conditions:** TODO
- **Next exact experiment, missing prerequisite, or deferred revisit trigger:** TODO
- **Relevant finding ID:** TODO / none

### Closure bar

A source-level trace is necessary but cannot alone establish exploitability. Verify the harness reached the intended path, run clean or reinitialized state for independent cases, check expected and actual behavior, and repeat non-deterministic cases. Test the unmodified target; document exploratory patches separately. A realistic attacker path and meaningful security-boundary impact are needed to **confirm** a vulnerability. A passing test, missing fixture, one failed PoC, or an unreachable harness never **disproves** it. Disproof requires adequate evidence for all material coverage cases or a source-grounded proof that the purported attack path is unreachable. No arbitrary number of payloads or tests substitutes for condition coverage.

Before **deferring** an unresolved candidate, complete source tracing, the coverage plan, a mechanism-specific local attempt and direct follow-ups; record why it has lower priority and when to return. Use overall **blocked** only if no meaningful permitted investigation can proceed; state the exact prerequisite. Use **out of scope** only with the matching SCOPE.md exclusion. Preserve all failed and inconclusive run links. On confirmation, promote to findings/ with permanent F-### ID and separate novelty/eligibility review, not a premature submission claim.
