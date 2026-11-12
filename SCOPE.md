# Engagement scope — complete for each target

## Authorization
- Engagement type (bug bounty / client audit / own project): TODO
- Authorization or program URL / written agreement: TODO
- Rules last checked (YYYY-MM-DD): TODO
- Submission and disclosure channel: TODO
- Embargo / confidentiality rules: TODO
- Severity rubric: TODO
- Program eligibility, known-issue, and minimum proof/report requirements: TODO

## Exact target version
- Repository / package / image / artifact URL: TODO
- Full commit SHA / version / image digest: TODO
- Authorized deployment, domain, endpoint, chain, or environment (if applicable): TODO
- Language, runtime, and tools: TODO

## In scope
- Code modules, components, hosts, APIs, contracts, and configurations: TODO
- Security boundaries and protected assets: TODO
- Intended attacker permissions and threat model: TODO

## Exclusions
- Explicitly excluded components and vulnerabilities: TODO
- Known accepted risks or public issues: TODO

## Standing user approval and testing boundaries

The workspace owner grants the AI **standing approval to carry out all otherwise-permitted audit research and testing**, without repeated prompts for each tool, hypothesis, role, payload, or test case. This is permission from the workspace owner to operate the research workflow, **not a grant of access to third-party assets**. The bounty program or engagement still determines which remote targets and activities are authorized.

**Proceed immediately without per-test approval:**
- Inspect legitimately available source, bytecode, public architecture, published audit reports, and public on-chain state.
- Build, execute, instrument, mutate, fuzz, and test authorized local copies in disposable, researcher-controlled environments, including emulators, private local testnets, local forks, synthetic identities/assets, and exploit chains that remain isolated. Keep the audited baseline under `target/` unchanged and observe local resource caps.
- Read publicly available blockchain state through published RPC or explorer interfaces within provider terms and reasonable rate limits; this is data retrieval, **not permission to attack or stress the RPC provider or deployed protocol**.

**Remote non-production targets:** A public/shared testnet, staging service, or other target-operated endpoint may be actively tested only when the current official program or a written engagement authorizes that **asset and activity**. Once verified in this file, do not request redundant user approval for every test method or case. Respect program exclusions, service terms, rates, stop conditions, and third-party boundaries. When the remote grant is missing or unclear, hold that remote activity only; continue local/source-based investigation.

**Production:** Public, nonsensitive read-only chain queries and source inspection may proceed under lawful access and provider rules. Nonpublic/authenticated production access, user data, and active security probing require separately verified target authorization and data boundaries. **Never broadcast transactions, perform production writes, mutate live state, move real funds, or perform a destructive production action**, even when a PoC proves the same behavior locally. Production approval is not implied by a testnet authorization.

For a concrete engagement, record the target, revision, rules, explicit exclusions, operational limits, and remote grant below. Blank or `TODO` fields must not prevent local work but **must not be interpreted as permission for unverified remote tests**.

## Remote scope and exception details

Use this section to verify the program/engagement authorization for remote non-production targets and record its conditions. No per-activity matrix or per-case user approval is required after an activity is established as permitted. Preserve the program's wording, use its full authorized breadth, and do not invent narrower restrictions. Blank or `TODO` fields never block local source/fork work or permitted public-state reads, but do not establish permission to actively test a remote target.

- Written authorization reference and date checked: TODO
- In-scope target and exact version/deployment identity: TODO
- Program-specific exclusions, methods requiring special approval, or limits beyond the default: TODO / none found after checking current rules
- Target testnet, staging, and shared non-production environments and their setup: TODO / identify available environments
- Provider terms, rate limits, and any service-specific restrictions for RPCs/indexers used to access target data: TODO
- Stop conditions, cleanup, rollback, and emergency contact: TODO
- Explicitly excluded assets, methods, or impacts: TODO / none found after checking current rules

Ordinary public-chain read-only queries through published interfaces are allowed within provider terms and rate limits without asking the user for per-query approval. Nonpublic or authenticated production reads and active production security testing still require the target owner's explicit authorization with stated assets, methods, data boundaries, and limits. Never access real user data without that authority. Production writes, transactions, real-fund movements, and persistent state changes are prohibited. Credentials do not expand scope or override program exclusions.

If a program-specific restriction or limit affects one remote activity, hold only that activity and continue non-production and other permitted work. Do not test against live users or retrieve or retain real user data. Use synthetic test assets and the least data and state change needed to demonstrate impact.

## Prior work
- Relevant audit reports, advisories, and comparable-incident research (with source/date): TODO
- Existing issue tracker and known mitigations: TODO
