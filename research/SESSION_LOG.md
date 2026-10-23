# Research session log

For each session, list the hypothesis IDs investigated, evidence-backed disposition, and canonical run-manifest paths. Carry unresolved candidates forward with the next concrete action; do not report an unexplained “skipped” or replace them with new candidates. Summarize results here; keep full outputs in the evidence run folders.

## 2026-10-22 — Local reproduction authorization baseline
- Target version checked: Not applicable; this is a reusable template project, and `target/` is not configured for an audit.
- Work performed: Updated the scope defaults to allow broad local-only reproduction, including local forks/private testnets, local state changes, synthetic roles, fuzzing, and exploit chains. Separated those activities from remote testnets, RPC providers, third-party services, production reads, and production writes.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review only; no target tests run.
- Confirmed facts: The previous matrix left local testing and state-changing reproduction unclear or prohibited unless separately permitted, which blocked isolated local PoCs despite no remote interaction.
- Open questions: For each real engagement, exact remote deployments, service terms, limits, and authorization still need to be recorded; production writes remain prohibited.
- Next concrete task: On an audit, identify which reproduction paths are fully local and document any remote fork data sources, shared testnets, or services separately in `SCOPE.md`.

## 2026-10-22 — Simplify remote authorization capture
- Target version checked: Not applicable; this is a reusable template project, and `target/` is not configured for an audit.
- Work performed: Removed the per-activity authorization matrix and replaced it with a concise written-scope summary for remote assets, methods, identities, providers, limits, test windows, and stop/cleanup requirements. Updated the README and agent workflow to match.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review only; no target tests run.
- Confirmed facts: The matrix duplicated scope details and could make allowed local reproduction appear conditional; the replacement keeps remote authorization boundaries explicit without requiring repetitive status rows.
- Open questions: Engagement-specific remote authorization remains to be recorded for each real target; production writes remain prohibited.
- Next concrete task: For an audit, fill the concise remote scope summary from the actual written authorization and continue with local-only reproduction by default.

## 2026-10-22 — Coverage depth and bounty eligibility review
- Target version checked: Not applicable; this is a reusable template project, and `target/` is not configured for an audit.
- Work performed: Removed the three-hypothesis ceiling; added an attack-surface/condition inventory, per-hypothesis coverage ledger, harness-reachability and environment-coverage requirements, and a rule that a blocked environment does not block other authorized work. Added current program-rule and public/local duplicate checks, including explicit pending/no-match/overlap distinctions. Extended the default authorization to in-scope target forks, testnets, and test/staging deployments, subject to explicit program limits; clarified `.env` covers audit tools, research services, and target test identities. Updated PoC, evidence, finding, and report templates after removing authorization-matrix references.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review and `git diff --check`; no target tests run.
- Confirmed facts: The prior workflow had an arbitrary three-candidate cap, a validation plan without a case ledger, no required public/local novelty screen, and remote non-production defaults that could block fork/testnet reproduction; template references to the removed scope matrix also remained.
- Open questions: Target-specific bounty rules, prior art, exact test environments, and required test conditions are unknown until an engagement is configured; those checks must remain pending then.
- Next concrete task: On an audit, capture current official program rules and exceptions, inventory all attack surfaces and available environments, seed the uncapped candidate queue, and execute every material coverage-plan case within the non-production default and program limits.

## 2026-10-22 — Final template consistency review
- Target version checked: Not applicable; this is a reusable template project, and `target/` is not configured for an audit.
- Work performed: Rechecked scope defaults and linked research, finding, PoC, and evidence templates. Separated novelty from eligibility, clarified evidence-oriented coverage-case statuses, required every inventoried attack surface to map to a candidate or a documented rationale, and stated that the engagement owner's default does not add assets to program scope.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review and `git diff --check`; no target tests run.
- Confirmed facts: The prior case statuses could be confused with test-run outcomes, and the combined novelty/eligibility screen could hide distinct judgments.
- Open questions: Target-specific program rules, prior art, and test conditions remain unconfigured and must be checked for each engagement.
- Next concrete task: For an audit, identify the named in-scope target, verify current program rules, map all material attack surfaces, and investigate each coverage case under the recorded non-production default and explicit limits.

## 2026-10-13 — Template workflow review
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Reviewed the audit workflow and strengthened hypothesis quality, investigation, evidence, and disposition requirements.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review only; no target tests run.
- Confirmed facts: The template previously had no required per-candidate attempt history or evidence bar for marking a hypothesis disproven.
- Open hypotheses / blockers (IDs / next action): Target-specific audit is pending a completed `SCOPE.md` and authorized target/version.
- Next concrete task: For an audit, complete `SCOPE.md`, provide the authorized target under `target/`, then inspect its version and architecture before recording evidence-based hypotheses.

## 2026-10-13 — Testing authorization review
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Expanded scope capture into a per-activity authorization matrix and directed auditors to maximize test coverage within recorded permissions and limits.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review only; no target tests run.
- Confirmed facts: The prior scope template did not enumerate key test environments, identities, methods, data, state changes, or operational limits.
- Open hypotheses / blockers (IDs / next action): Target-specific audit remains pending a completed authorization matrix and authorized target/version.
- Next concrete task: Complete `SCOPE.md` for the engagement, then test the applicable authorized environments and methods within their written guardrails.

## 2026-10-13 — Authorized test breadth review
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Added explicit role, identity, data, exploit-proof, data-access, persistence, and environment conditions; clarified that blank permissions are unclear and added a maximum audit/testing duration field.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation review only; no target tests run.
- Confirmed facts: The scope matrix now distinguishes each activity and requires its assets, permission basis, limits, and stop/cleanup conditions. Blank or `TODO` permission cells do not authorize testing.
- Open hypotheses / blockers (IDs / next action): Target-specific audit remains pending a completed authorization matrix and authorized target/version.
- Next concrete task: For an engagement, obtain written permission for the relevant maximum test scope, fill each applicable matrix row, and exercise those cases within their limits.

## 2026-10-13 — PoC and evidence workflow
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Standardized hypothesis-scoped PoC folders, immutable per-run evidence folders, a run-manifest template, and links from hypotheses and findings to canonical run records. Added a local helper to initialize a run folder without executing tests.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation and template changes only; no target tests run.
- Confirmed facts: Run manifests record the target revision, permission basis, environment, PoC revision/hash, command, results, artifacts, cleanup, and next action. The helper only creates a folder and manifest; it does not contact a target. Cross-engagement reuse is directed outside this one-target workspace.
- Open hypotheses / blockers (IDs / next action): Target-specific audit remains pending a completed authorization matrix and authorized target/version.
- Next concrete task: For each target hypothesis, copy the PoC README template and create one new evidence run folder/manifest per validation attempt.

## 2026-10-14 — Finding author identity
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Added the GitHub username as the finding author in the finding dossier template and added an author column and convention to the finding register.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation-only update; no target tests run.
- Confirmed facts: The active GitHub username is `everforyou`.
- Open hypotheses / blockers (IDs / next action): Target-specific audit remains pending a completed authorization matrix and authorized target/version.
- Next concrete task: For an engagement, complete `SCOPE.md`, provide the authorized target, and inspect its version and architecture before recording evidence-based hypotheses.

## 2026-10-14 — Finding author placeholder correction
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Removed the hardcoded username from the reusable finding template; the author field now calls for the actual author's GitHub login for each finding.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation-only correction; no target tests run.
- Confirmed facts: Finding authorship is selected per finding and may vary across contributors.
- Open hypotheses / blockers (IDs / next action): Target-specific audit remains pending a completed authorization matrix and authorized target/version.
- Next concrete task: For an engagement, complete `SCOPE.md`, provide the authorized target, and inspect its version and architecture before recording evidence-based hypotheses.

## 2026-10-14 — Submission root-cause code excerpt
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Updated the submission template's root-cause section to include a short, referenced source-code excerpt followed by an explanation of the relevant checks, control flow, and demonstrated impact.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation-only update; no target tests run.
- Confirmed facts: The report template now asks for both code evidence and a clear explanation; it also allows minimal pseudocode when program rules prohibit reproducing source.
- Open hypotheses / blockers (IDs / next action): Target-specific audit remains pending a completed authorization matrix and authorized target/version.
- Next concrete task: For an engagement, complete `SCOPE.md`, provide the authorized target, and inspect its version and architecture before recording evidence-based hypotheses.

## 2026-10-15 — Recent incident-informed research
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Added a blockchain-specific workflow to prioritize comparable fund-loss incidents whose exploits occurred within the three years before an audit, with older incidents retained when mechanisms remain relevant. Added a structured incident record that separates reported severity from loss evidence and requires mapping to target code before deriving hypotheses.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation-only update; no target tests or incident survey run.
- Confirmed facts: An incident pattern is a source of hypotheses, not evidence that the audited target is vulnerable.
- Open hypotheses / blockers (IDs / next action): A concrete incident survey requires a configured blockchain target, architecture, and exact version.
- Next concrete task: When a blockchain target is configured, identify comparable protocols and survey recent incidents before finalizing code-grounded hypotheses.

## 2026-10-15 — Production read-only scope
- Target version checked: Not applicable; `target/` is empty and `SCOPE.md` is unfilled.
- Work performed: Separated production read-only queries from production mutations. The scope now prompts for maximum bounded reads only when exact assets, methods, identities, data limits, and written authorization are recorded; production writes and persistent state changes are prohibited.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation-only update; no target tests run.
- Confirmed facts: Read-only production permission does not authorize writes, transactions, access to real user data, or unlisted third-party services.
- Open hypotheses / blockers (IDs / next action): Target-specific production read permissions and limits remain unconfigured in `SCOPE.md`.
- Next concrete task: For an engagement, record exact read-only assets/methods and limits; conduct write/state-change validation only in authorized non-production environments.

## 2026-10-15 — Template version management
- Target version checked: Not applicable; this is a reusable template project, and `target/` is empty.
- Work performed: Added a semantic template version, changelog, and distribution guidance that distinguishes template releases from target versions and target-specific audit changes.
- Hypotheses investigated and disposition (IDs / evidence): None; no authorized audit target is configured.
- Commands and results: Documentation-only update; no target tests run.
- Confirmed facts: No prior version file or Git release tags existed; the initial tracked baseline is `0.1.0`.
- Open questions: None for the versioning scheme; use `v0.1.0` to identify this initial versioned distribution snapshot.
- Next concrete task: For the next distributed template snapshot, update `VERSION` and `CHANGELOG.md`, then publish a matching immutable `vMAJOR.MINOR.PATCH` tag.
