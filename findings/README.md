# Finding register

This is the authoritative index for validated finding dossiers under `findings/`. Keep one permanent ID and current status row per finding. Store each record at `findings/<finding-slug>/FINDING.md`. Keep hypotheses and unvalidated leads in `research/` until evidence demonstrates a security boundary violation.

**ID format:** The default is `F-001`, `F-002`, and so on. For a multi-component audit, document the project/component ID format in the project README before assigning IDs. Never renumber or reuse an ID, even if a finding is closed or merged.

**Finding status:** Use `Reproduced`, `Confirmed`, `Fixed`, or `Closed`. Keep reproduction and validation details in the dossier.

**Submission status:** `Submitted — confirmed in dossier` means the dossier contains a user-confirmed submission or sent-mail reference; `Submitted — recorded` means the dossier explicitly reports submission without that confirmation; `Unverified` means available records do not establish sending; `Draft`, `Not submitted`, and `No record` retain their literal meanings.

**Program response:** Record `Accepted`, `Duplicate`, `Invalid/ineligible`, `Rejected`, `Needs information`, or `Awaiting acknowledgment` only when supported by program correspondence. `No feedback recorded here` means submission is recorded but no disposition appears in the dossier; `Unknown` means delivery is unverified, so the response state cannot be established; `—` means a response does not apply to a draft or not-submitted report. A local duplicate or prior-art assessment is not program feedback.

Add one row per finding and link its dossier folder. Preserve existing program or report IDs in the reference column; they are separate from the workspace ID.

| Finding ID | Title | Finding status | Severity | Submission status | Program response | Program/report reference | Dossier |
| --- | --- | --- | --- | --- | --- | --- | --- |
