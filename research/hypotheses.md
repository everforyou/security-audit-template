# Investigation hypotheses

Maintain a complete, prioritized queue of code-grounded candidates from the attack-surface inventory; there is no fixed number limit. Do not remove a candidate after an initial failure or environmental gap. Refine/split it, continue other available cases, and preserve any unresolved environment check. Follow `AGENTS.md`.

| ID | Priority | Component / path | Falsifiable hypothesis | Technical status | Novelty screen | Eligibility screen | Last evidence | Next action / revisit trigger |
|---|---|---|---|---|---|---|---|---|
| H-001 | TODO | TODO | TODO | untested | pending | pending | None | TODO |

## Status meanings

- `untested` — recorded but no validation attempt has been made.
- `investigating` — active source tracing or validation is underway.
- `reproduced` — the predicted behavior is repeatable, but security impact is not yet established.
- `confirmed` — a realistic, in-scope attacker path and meaningful security-boundary violation are demonstrated. This is technical confirmation only; bounty eligibility and novelty remain separate screens.
- `disproven` — every material case in the coverage plan has evidence, and the relevant paths/preconditions show the stated failure mechanism does not violate the invariant. Record counterevidence and completed coverage below; untested cases cannot be treated as disproven.
- `blocked` — no meaningful authorized work on the hypothesis can proceed because of a specific missing authorization, artifact, or dependency. If only one environment/case is blocked, keep the hypothesis open and mark only that coverage-plan case blocked.
- `deferred` — unresolved and intentionally lower priority only after source tracing, a complete coverage plan, a mechanism-specific local attempt, and direct follow-ups. Record why remaining work is materially lower priority and a revisit trigger. If a test is blocked by a missing artifact, dependency, or environment, mark that case blocked and keep doing other meaningful work; do not defer the whole hypothesis. This is not disproven.
- `out of scope` — the candidate maps to a specific written exclusion in `SCOPE.md`; cite it below. This is not a safety conclusion.

The novelty screen uses `pending`, `no match found`, `possible overlap`, `known/accepted issue`, or `unclear`. `No match found` means recorded searches found no result; it does not prove uniqueness. The separate eligibility screen uses `pending`, `eligible`, `ineligible`, or `unclear`, based on current written program rules. A known issue is not automatically ineligible, and an apparently eligible issue is not automatically novel. Reproduction does not resolve either screen; program correspondence alone records an official decision.

## Investigation records

Copy this record for each hypothesis. Keep attempts and prior conclusions when refining it; use linked IDs for split hypotheses.

### H-001 — [short title]

- **Status / priority:**
- **Target version:**
- **Component and code references:**
- **Falsifiable hypothesis:**
- **Security invariant and expected consequence:**
- **Attacker capabilities and preconditions:**
- **Plausible path:** entry point/action → relevant checks → sensitive operation/sink → affected asset or boundary
- **Supporting evidence:**
- **Counterevidence / alternative explanations:**
- **Eligibility screen:** official source(s), date checked, eligible asset/version/impact, severity rubric, proof/report requirements, exclusions, and status (`pending`, `eligible`, `ineligible`, or `unclear`).
- **Novelty / duplicate screen:** public sources and search terms checked; local records checked (`findings/`, other hypotheses, prior reports); possible overlap and distinguishing facts; status (`pending`, `no match found`, `possible overlap`, `known/accepted issue`, or `unclear`). A search with no result is not proof of uniqueness.
- **Validation coverage plan:** derive the cases below from code, threat model, and deployment assumptions. Consider, where applicable, roles and permissions; entry points; empty, malformed, boundary, duplicate, or reordered inputs; initialization and lifecycle state; retries, partial failures, reentrancy/concurrency; configuration, version, and dependency behavior; and local versus deployment-specific conditions. Include each condition that could change the result; mark non-applicable cases with a reason. For remote cases, reference the default non-production target authorization in `SCOPE.md` and record any applicable program-specific exception or limit; do not require a separate permission entry per test.

| Case | Role / entry point / boundary | Input, state, or configuration variant | Environment and exact version | Expected result / control | Case status and run ID(s) | Gap or rationale |
|---|---|---|---|---|---|---|
| C-01 | TODO | TODO | TODO | TODO | planned | TODO |

#### Attempts

| Run ID | Environment / authorization reference | Case(s) and result summary | Canonical manifest path | Next action |
|---|---|---|---|---|
| `YYYYMMDDTHHMMSSZ-01` | TODO | TODO | `evidence/H-001/runs/<run-id>/manifest.yaml` | TODO |

Case status is one of `planned`, `supports`, `counterevidence`, `inconclusive`, `blocked`, or `not applicable`. `Supports` means the observed behavior supports the proposed mechanism; it does not by itself establish impact. `Counterevidence` means a valid test reached the relevant path and weighs against the mechanism; it does not by itself disprove the hypothesis. A setup failure or unreachable harness is `inconclusive`. Keep detailed commands, tested builds, tool versions, expected/observed results, and artifact paths in each manifest. Add one row for every material attempt; never replace an older run row.

- **Disposition rationale:** explain why the evidence meets the selected status; for `blocked`, `deferred`, or `out of scope`, include the missing prerequisite, revisit trigger, or exact scope exclusion.
- **Related or split hypothesis IDs:**
