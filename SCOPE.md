# Engagement scope — complete for each target

## Authorization
- Engagement type (bug bounty / client audit / own project): TODO
- Authorization or program URL / written agreement: TODO
- Rules last checked (YYYY-MM-DD): TODO
- Submission and disclosure channel: TODO
- Embargo / confidentiality rules: TODO
- Severity rubric: TODO

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

## Local-only testing baseline

This template explicitly allows research that stays entirely inside the researcher's isolated, researcher-controlled local environment, using source or artifacts the researcher is authorized to review. This includes source/configuration/dependency review; local builds and tests; emulators, offline forks, and private local testnets; synthetic local identities and data; local role-boundary checks; fuzzing and exploit-chain reproduction; and state changes, callbacks, or persistence confined to a disposable local copy. Local resource testing is allowed against isolated local processes with a per-run resource cap and stop condition. Keep the audited baseline under `target/` unchanged; put experiments in `poc/` or `scripts/`.

This baseline does not authorize network activity. A local fork that fetches state from an RPC provider makes remote requests; a public/shared testnet is a remote deployment even though it is not production. Record the applicable provider/deployment, methods, and limits in the authorization section below before contacting them. A target-owned or engagement-designated testnet may be used for state-changing reproduction when the written authorization includes that deployment and method. Production writes, transactions, and persistent state changes remain prohibited.

## Remote testing authorization

Use this section to summarize the written engagement scope. No per-activity matrix is required. Record the exact remote assets and environments, the permitted methods, and any boundaries or limits. A broad authorization may cover multiple methods; preserve its actual wording and exclusions rather than narrowing it through generic template rows. Blank or `TODO` remote details mean the affected remote activity is not authorized. This does not restrict the local-only testing baseline above.

- Written authorization reference and date checked: TODO
- Authorized remote assets and deployments, including any test/staging environments or testnets: TODO
- Remote testing methods and proof actions explicitly permitted (for example authentication/role tests, state-changing PoCs, fuzzing, callbacks, or persistence): TODO
- Approved test identities/roles and synthetic data; boundaries they may test: TODO
- Third-party services/providers (including RPCs/indexers), allowed calls, and applicable terms: TODO
- Remote request, concurrency, duration, resource, and data limits: TODO
- Permitted test window and time zone: TODO
- Stop conditions, cleanup, rollback, and emergency contact: TODO
- External callback or egress destinations, if any: TODO
- Explicitly excluded assets, methods, or impacts: TODO

Production read-only queries require written authorization identifying the assets, query methods, identity, data boundaries, and rate limits. Do not access real user data. Production writes, transactions, and persistent state changes are prohibited. A public/shared testnet or available credential does not by itself authorize testing.

If remote authorization or limits are missing, hold only the affected remote activity and continue with the local-only baseline and other clearly authorized work. Do not test against live users or retrieve or retain real user data. Use synthetic test assets and the least data and state change necessary for any authorized remote proof.

## Prior work
- Relevant audit reports, advisories, and comparable-incident research (with source/date): TODO
- Existing issue tracker and known mitigations: TODO
