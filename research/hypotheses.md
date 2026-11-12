# Hypothesis index — one row per permanent ID

This is a **compact queue** for choosing the next audit task, not a place to paste tests or long analysis. Store each H-### record, case ledger and attempt history in research/hypotheses/H-###.md, copied from [HYPOTHESIS_TEMPLATE.md](hypotheses/HYPOTHESIS_TEMPLATE.md). Keep IDs permanent; never silently drop, overwrite, or recycle a candidate. Sort rows by priority without changing IDs. Do not add speculative filler or cap genuine source-grounded candidates.

| ID | Priority | Component / concise claim | Technical status | Novelty | Eligibility | Last evidence | Next action / revisit trigger |
| --- | --- | --- | --- | --- | --- | --- | --- |
<!-- Add candidates here; there is no pre-existing H-001 finding. -->

## Technical status

- **untested:** captured, no validation attempt.
- **investigating:** source tracing or tests underway.
- **reproduced:** behavior repeats; attacker impact not yet established.
- **confirmed:** realistic attacker path and a meaningful security-boundary violation demonstrated; does not imply bounty acceptance.
- **disproven:** all material coverage cases support that the proposed invariant violation does not occur; failed setup or one passing test is insufficient.
- **blocked:** no meaningful permitted investigation can proceed; case-only blockers belong in the dossier, not as an overall stop.
- **deferred:** source trace, coverage plan, local attempt and direct follow-ups completed; unresolved but deprioritized with a specific revisit trigger.
- **out of scope:** tied to an actual written exclusion in SCOPE.md; not a conclusion about safety.

Record case-specific results and exactly what they prove in the dossier. A blocked remote case never automatically blocks available local research.

## Separate bounty screens

**Novelty:** pending / no match found / possible overlap / known or accepted issue / unclear.

**Eligibility:** pending / eligible / ineligible / unclear (based on current written program rules).

Do not merge these with technical status. Search evidence belongs in research/known-issues.md and the candidate dossier. Program acceptance/duplicate decisions belong only in the finding register after correspondence.

## Working convention

1. Inventory reachable code paths in research/architecture.md and link each material surface to an H-### file or a documented no-candidate rationale.
2. For each new ID, add its index row, create research/hypotheses/H-###.md from the template, then create poc/H-###/ as needed.
3. Append each attempt to the candidate dossier and its immutable evidence manifest, updating the index's **last evidence** and **next action** fields.
4. Resume the highest-priority unresolved row using research/STATUS.md. Preserve old investigations, even when contradicted by later evidence.
