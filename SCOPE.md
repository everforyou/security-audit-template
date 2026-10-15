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

## Testing authorization matrix — maximize coverage within explicit permission

Complete every row with `Allowed`, `Not allowed`, `Conditional`, or `Unclear`. A blank or `TODO` is incomplete and must be treated as `Unclear`, not permission. To enable thorough testing, record the broadest practical written authorization for the in-scope assets and methods, plus exact limits. Permission for one asset, environment, identity, or method does not imply permission for another. `Unclear` holds only the affected activity; continue with rows explicitly marked `Allowed`.

For each `Allowed` or `Conditional` row, name the exact assets and environment, authorized identities and data, permitted methods and proof actions, prerequisites, rate/resource limits, time windows, and stop/rollback conditions. Cite the written authorization and date. Do not use a general phrase such as “security testing allowed” without defining what it covers. Do not treat technical access as authorization.

For thorough coverage, explicitly identify the attacker roles to simulate (such as unauthenticated, ordinary user, tenant admin, and system admin when relevant), the approved test accounts/tenants for each role, the boundaries they may test across, and the synthetic fixtures they may use. State whether controlled exploit-chain proof, writes/deletes, callbacks, or privilege changes are permitted and where the test must stop. Do not use real end-user accounts or cross into real end-user data to test an isolation boundary; use designated test identities and synthetic fixtures.

| Activity | Permission | Exact assets / environment / identities | Permitted methods and proof actions | Limits, prerequisites, stop / rollback conditions | Authorization reference |
|---|---|---|---|---|---|
| Passive source, configuration, and dependency review | TODO | TODO | TODO | TODO | TODO |
| Local build, unit/integration tests, emulators, and isolated reproduction | TODO | TODO | TODO | TODO | TODO |
| Dedicated test or staging environment | TODO | TODO | TODO | TODO | TODO |
| Production read-only queries / observations (no committed state change) | **Conditional — allowed only when written authorization names the assets and query methods** | TODO | Specify read-only RPC/API/view calls and any permitted simulations; no signed or broadcast transaction, write, callback, or real-user data access | Record request rate, concurrency, query/data limits, identity, time window, and stop conditions | TODO |
| Production writes, transactions, or persistent state changes | **Not allowed** | TODO | None; use an authorized local, test, or staging environment for state-changing validation | Production mutations are prohibited, including writes, deletes, privileged actions, callbacks, and persistence | N/A — prohibited |
| Authentication, authorization, and role-boundary testing | **Not allowed unless explicitly permitted** | TODO | TODO | TODO | TODO |
| Automated scanning, fuzzing, or high-volume requests | **Not allowed unless explicitly permitted** | TODO | TODO | Include request rate, concurrency, duration, and stop threshold | TODO |
| Load, availability, or resource-exhaustion testing | **Not allowed unless explicitly permitted** | TODO | TODO | Include capacity limits and stop threshold | TODO |
| State-changing actions or exploit-chain validation in local, test, or staging environments | **Not allowed unless explicitly permitted** | TODO | Specify allowed writes, deletes, privilege changes, callbacks, and controlled impact proof | Specify test assets, cleanup/rollback, and the required stop point; production state changes remain prohibited | TODO |
| Test credentials, accounts, and synthetic data | **Not allowed unless explicitly permitted** | TODO | Specify account roles and allowed data/actions | Do not access or retain real user data | TODO |
| Data-access, export, callback, or egress-path validation | **Not allowed unless explicitly permitted** | TODO | Use synthetic records and an approved test destination only | Specify data limits, destination, and stop point; no real-user data | TODO |
| Persistence or long-lived access validation | **Not allowed unless explicitly permitted** | TODO | Specify the exact isolated test asset and permitted persistence mechanism | Include cleanup, rollback, and maximum duration | TODO |
| Third-party services, integrations, or accounts (including RPCs and indexers) | **Not allowed unless explicitly permitted** | TODO | TODO | TODO | TODO |
| Social engineering or testing human workflows | **Not allowed unless explicitly permitted** | TODO | TODO | TODO | TODO |

### Global test limits and stop conditions
- Authorized audit/testing period and maximum total testing duration: TODO
- Maximum request rate / concurrency / duration: TODO
- Production read-only request rate, concurrency, query/data limits, and API identity (if applicable): TODO
- Permitted test window and time zone: TODO
- Data handling and cleanup requirements: TODO
- Prohibited actions and immediate stop triggers: TODO
- Emergency contact / escalation path: TODO

If authorization or a limit is missing, do not perform that activity. Record the gap and continue with independent activities explicitly allowed above. Do not test against live users or retrieve or retain real user data. Demonstrate impact with the least data and state change necessary, using synthetic test assets and an approved destination wherever possible. Persistence and export-path tests require explicit permission and cleanup/stop conditions in their rows.

## Prior work
- Relevant audit reports, advisories, and comparable-incident research (with source/date): TODO
- Existing issue tracker and known mitigations: TODO
