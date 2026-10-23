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

## Non-production testing authorization

This template explicitly allows research that stays entirely inside the researcher's isolated, researcher-controlled local environment, using source or artifacts the researcher is authorized to review and test. This includes source/configuration/dependency review; local builds and tests; emulators, offline forks, and private local testnets; synthetic local identities and data; local role-boundary checks; fuzzing and exploit-chain reproduction; and state changes, callbacks, or persistence confined to a disposable local copy. Local resource testing is allowed against isolated local processes with a per-run resource cap and stop condition. A specific written engagement restriction on local use takes precedence; otherwise, do not add extra per-test permission gates. Keep the audited baseline under `target/` unchanged; put experiments in `poc/` or `scripts/`.

The engagement owner's default authorization for this template covers non-production testing of the target assets identified as in scope, including RPC-backed forks, the target's public/shared testnets, and target-owned test/staging deployments. This includes state-changing reproduction, role and boundary testing, fuzzing, and exploit chains on those non-production environments. It does not add assets to the program's scope or override explicit program exclusions, test limits, or stop conditions; those affect only the restricted activity. Do not require a separate permission entry for each test method or case. Use public target data and synthetic test assets; respect published provider terms and rate limits. Testing a third-party service or asset as a target still requires its own authorization. Production writes, transactions, and persistent state changes remain prohibited.

## Remote scope and exception details

Use this section to summarize the written engagement scope and any exceptions to the default non-production authorization above. No per-activity matrix or per-case permission is required. Identify the in-scope target and record explicit program exclusions, special limits, and stop conditions. Preserve the program's wording and exercise its full permitted breadth; do not invent narrower template-imposed restrictions. Blank or `TODO` fields do not revoke the default authorization for non-production testing of the in-scope target, but they do mean target identity, version, exclusions, and special limits still need to be checked before remote activity.

- Written authorization reference and date checked: TODO
- In-scope target and exact version/deployment identity: TODO
- Program-specific exclusions, methods requiring special approval, or limits beyond the default: TODO / none found after checking current rules
- Target testnet, staging, and shared non-production environments and their setup: TODO / identify available environments
- Provider terms, rate limits, and any service-specific restrictions for RPCs/indexers used to access target data: TODO
- Stop conditions, cleanup, rollback, and emergency contact: TODO
- Explicitly excluded assets, methods, or impacts: TODO / none found after checking current rules

Production read-only queries require written authorization identifying the assets, query methods, identity, data boundaries, and rate limits. Do not access real user data. Production writes, transactions, and persistent state changes are prohibited. Credentials do not expand the in-scope target or override program exclusions.

If a program-specific restriction or limit affects one remote activity, hold only that activity and continue non-production and other permitted work. Do not test against live users or retrieve or retain real user data. Use synthetic test assets and the least data and state change needed to demonstrate impact.

## Prior work
- Relevant audit reports, advisories, and comparable-incident research (with source/date): TODO
- Existing issue tracker and known mitigations: TODO
