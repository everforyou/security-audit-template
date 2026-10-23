# F-001: [Concise security impact]

Copy this template to `findings/<finding-slug>/FINDING.md`. Replace the example ID with the next ID from `findings/README.md` and keep that ID permanent if the title or folder name changes.

- Author (GitHub username): [author's GitHub login]

## Status and severity
- Finding status: reproduced / confirmed / fixed / closed
- Proposed severity and applicable rubric: TODO
- Target version / commit: TODO

## Summary
[Short technical summary; distinguish demonstrated behavior from inference.]

## Affected component
- Source path, function, line / endpoint / configuration: TODO
- Trust boundary or security property violated: TODO

## Preconditions and threat model
[Attacker access, privileges, target state, required dependencies.]

## Root cause
[Explain exactly why the security property is violated.]

## Reproduction
- Isolated setup and environment: TODO
- Related hypothesis ID(s): TODO
- PoC instructions and code: `poc/H-###/README.md` and related files
- Run manifest(s): `evidence/H-###/runs/<run-id>/manifest.yaml`
- Exact commands and inputs: summarize the approved reproduction steps here; the run manifest is the canonical record for the tested command, version, and environment.
- Expected result: TODO
- Actual observed result: TODO
- Sanitized evidence artifacts: link paths listed in the run manifest(s)

## Security impact
[Concrete consequence, affected assets/users, limitations, and any measured bound.]

## Suggested mitigation
[Actionable, scoped fix and regression test idea.]

## Program eligibility and novelty review
- Official program rules / scope / known-issue sources and date checked: TODO
- Exact in-scope asset and affected version: TODO
- Eligible impact and applicable severity criteria: TODO
- Required proof, report format, and submission instructions verified: TODO
- Public prior-art sources/search terms, dates, results, and links: TODO
- Same-target local comparison (`findings/`, hypotheses, prior reports/drafts) and links: TODO
- Possible overlap and material differences in root cause, version, preconditions, or impact: TODO
- Researcher screen: pending / no match found / possible overlap / known or ineligible / unclear
- Recheck date before submission: TODO

`No match found` is a documented search result, not proof of uniqueness or program acceptance. Record program eligibility decisions only when supported by program correspondence; keep local assessments separate from program responses.

## Submission tracking

Track submission separately from technical validation. Update the finding register and keep supporting correspondence or receipt in this dossier.

- Submission status: no record / unverified / draft / not submitted / submitted — recorded / submitted — confirmed in dossier
- Submission date and channel: TODO
- Submission reference or receipt: TODO
- Evidence path for sent status: TODO
- Program response: unknown / no feedback recorded here / awaiting acknowledgment / accepted / duplicate / invalid or ineligible / rejected / needs information / other (quote or summarize the disposition)
- Response date and evidence path: TODO

Only mark a report submitted when the dossier contains evidence of sending. Record program dispositions from program correspondence. A local duplicate or prior-art assessment is not program feedback. Use `—` in the register when no response applies because the report is only a draft or was not submitted.
