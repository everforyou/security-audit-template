# Known issues, public research, and duplicate checks

Record source URL, publication date, affected version, fix status, and whether each source overlaps a candidate finding. Do not mark a duplicate check complete without evidence.

## Bounty eligibility and duplicate review for all targets

For every credible hypothesis and again before submission, compare it against both the current program rules and existing public/local knowledge. Do not wait until a polished finding is written to discover that the affected asset, version, impact, or proof method is excluded.

- Read the current official program policy/scope, known-issue list, exclusions, severity rubric, and submission instructions. Record URLs, access dates, exact asset/version match, eligibility criteria, accepted-risk/known-issue notes, required impact evidence, and required PoC/report format.
- Search relevant public sources for the mechanism and affected component: official security advisories and changelogs, CVEs, issue/PR trackers, release notes, prior audits, postmortems, published bounty disclosures, and other credible reports. Use project/component names, function or endpoint names, and mechanism-specific terms. Record sources, dates, useful search terms, results, and overlap/difference.
- Search the available local history for this same target/engagement: all rows and dossiers in `findings/`, all records in `research/hypotheses.md` and `research/known-issues.md`, prior session notes, supplied prior audits, and target-specific reports/drafts. Review relevant Git history when earlier findings may have been removed. Local unresolved candidates can overlap even if no finding was confirmed. Do not copy confidential findings or notes from unrelated engagements into this workspace.
- Track two separate screens. Novelty uses `pending`, `no match found`, `possible overlap`, `known/accepted issue`, or `unclear`; eligibility uses `pending`, `eligible`, `ineligible`, or `unclear`, based on current program rules. `No match found` means the recorded searches found no result; it is not proof that an issue is novel. A known issue is not automatically ineligible, and eligibility does not establish novelty. Explain whether similar reports share the root cause, affected version, exploit precondition, and impact.
- If web access, program correspondence, or a local record is unavailable, keep that part pending. Do not infer eligibility from a successful reproduction or infer a program decision from public prior art. Recheck policy and prior art immediately before submission because program rules can change.
- If a candidate matches a known/accepted issue, do not submit it as new; determine whether the root cause, affected version, preconditions, or impact materially differ, and document that distinction before proceeding.

## Incident-informed research for blockchain targets

Use this section when the target is a blockchain protocol or system. Start with comparable projects and prioritize incidents whose exploit occurred in the three years before the audit. Extend the search to older incidents when the same mechanism remains in the target or the incident is a seminal example; a recent disclosure of an older exploit may also be relevant. Favor incidents with confirmed fund loss and a source-reported High or Critical rating; severity schemes differ, so preserve the source's rating and record loss evidence separately. If a directly relevant incident has no reliable rating, mark it unrated rather than assigning one.

For each incident, distinguish the exploit date from the disclosure/publication date. Prefer project postmortems, official advisories, on-chain transaction evidence, and detailed independent analyses. Record what is established by sources versus inferred from analogy. A similar incident is a lead for target-specific investigation, not evidence that this target is vulnerable.

Copy this record for each selected incident:

### [Incident and project]
- Incident date / disclosure date:
- Source URL(s), publisher, and publication date:
- Comparable protocol / mechanism:
- Source-reported severity and rubric, or unrated:
- Confirmed fund loss and evidence/source:
- Root cause and violated security invariant:
- Attacker prerequisites and exploit path:
- Mitigation or fix, if known:
- Target mapping: matching components, code references, and important differences:
- Derived hypothesis ID(s), or reason no target hypothesis follows:
