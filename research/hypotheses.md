# Investigation hypotheses

Keep one stable record per candidate. Do not remove candidates that fail an initial test: refine or split them, or record why validation is blocked or deferred. Follow the investigation and closure rules in `AGENTS.md`.

| ID | Priority | Component / path | Falsifiable hypothesis | Status | Last evidence | Next action / revisit trigger |
|---|---|---|---|---|---|---|
| H-001 | TODO | TODO | TODO | untested | None | TODO |

## Status meanings

- `untested` — recorded but no validation attempt has been made.
- `investigating` — active source tracing or validation is underway.
- `reproduced` — the predicted behavior is repeatable, but security impact is not yet established.
- `confirmed` — a realistic, in-scope attacker path and meaningful security-boundary violation are demonstrated; eligible for finding review.
- `disproven` — the relevant paths and preconditions were tested and evidence shows the stated failure mechanism does not violate the invariant. Record the counterevidence and test coverage below.
- `blocked` — a specific missing authorization, artifact, dependency, or environment prevents a meaningful test. Record what is needed and the next action.
- `deferred` — unresolved and intentionally lower priority after source tracing and a mechanism-specific validation attempt, with direct follow-ups addressed. If testing is unavailable or materially lower priority before that, cite the evidence and record a revisit trigger. This is not disproven.
- `out of scope` — the candidate maps to a specific written exclusion in `SCOPE.md`; cite it below. This is not a safety conclusion.

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
- **Validation plan:** include the attack case, meaningful control or negative case, and expected result for each. For every case, cite the matching permission row in `SCOPE.md` and name the authorized environment and limits.

#### Attempts

| Run ID | Authorized environment / scope row | Case and result summary | Canonical manifest path | Next action |
|---|---|---|---|---|
| `YYYYMMDDTHHMMSSZ-01` | TODO | TODO | `evidence/H-001/runs/<run-id>/manifest.yaml` | TODO |

Keep the detailed command, tested build, tool versions, expected/observed results, and artifact paths in the manifest. Add one row for every material attempt; never replace an older run row.

- **Disposition rationale:** explain why the evidence meets the selected status; for `blocked`, `deferred`, or `out of scope`, include the missing prerequisite, revisit trigger, or exact scope exclusion.
- **Related or split hypothesis IDs:**
