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

This baseline does not authorize network activity. A local fork that fetches state from an RPC provider makes remote requests; a public/shared testnet is a remote deployment even though it is not production. Before contacting those services or deployments, complete the matching scope rows with exact assets, identities, methods, permission basis, provider terms, and limits. A target-owned or engagement-designated testnet may be used for state-changing reproduction when its exact deployment and permitted actions are documented there. Production writes, transactions, and persistent state changes remain prohibited.

## Testing authorization matrix — maximize coverage within explicit permission

Complete every row with `Allowed`, `Not allowed`, `Conditional`, or `Unclear`. A blank or `TODO` is incomplete and must be treated as `Unclear`, not permission. To enable thorough testing, record the broadest practical written authorization for the in-scope assets and methods, plus exact limits. Permission for one asset, environment, identity, or method does not imply permission for another. `Unclear` holds only the affected activity; continue with rows explicitly marked `Allowed`.

For each remote or externally affecting `Allowed` or `Conditional` row, name the exact assets and environment, authorized identities and data, permitted methods and proof actions, prerequisites, rate/resource limits, time windows, and stop/rollback conditions; cite the written authorization and date. For local-only rows covered by the baseline below, identify the target copy and local setup, and cite the baseline. Do not use a general phrase such as “security testing allowed” without defining what it covers. Do not treat technical access as authorization.

For thorough coverage, explicitly identify the attacker roles to simulate (such as unauthenticated, ordinary user, tenant admin, and system admin when relevant), the approved test accounts/tenants for each role, the boundaries they may test across, and the synthetic fixtures they may use. State whether controlled exploit-chain proof, writes/deletes, callbacks, or privilege changes are permitted and where the test must stop. Do not use real end-user accounts or cross into real end-user data to test an isolation boundary; use designated test identities and synthetic fixtures.

| Activity | Permission | Exact assets / environment / identities | Permitted methods and proof actions | Limits, prerequisites, stop / rollback conditions | Authorization reference |
|---|---|---|---|---|---|
| Passive source, configuration, and dependency review | **Allowed** | Source, configuration, and dependencies supplied in or for this audit, where the researcher is authorized to review them | Static review and local tooling; no remote target or service access is implied | Follow applicable license and confidentiality terms; do not disclose protected source | Source/artifact authorization for this audit |
| Local build, unit/integration tests, emulators, offline forks, private local testnets, and isolated reproduction | **Allowed** | Authorized target copy under `target/`; researcher-controlled local machine/container/network; synthetic local identities and fixtures | Build, run, and reproduce behavior locally, including state changes and exploit chains in disposable copies; no external network calls | Keep baseline unchanged; isolate the environment; set local resource caps and stop conditions for fuzz/stress runs; reset disposable state afterward | This template's local-only testing baseline; narrower target terms take precedence |
| Target-owned or engagement-designated test/staging deployment or public/shared testnet | **Conditional — identify the exact deployment and obtain written authorization for the methods used** | Exact host, chain/network, contract/service, test tenant, and authorized test identities | Include read/write methods, role tests, callbacks, and impact proof that are specifically permitted | Record rate/concurrency, test window, data/state limits, cleanup and stop conditions; testnet status alone is not authorization | TODO — cite program rules, agreement, or owner approval and date |
| Production read-only queries / observations (no committed state change) | **Conditional — allowed only when written authorization names the assets and query methods** | TODO | Specify read-only RPC/API/view calls and any permitted simulations; no signed or broadcast transaction, write, callback, or real-user data access | Record request rate, concurrency, query/data limits, identity, time window, and stop conditions | TODO |
| Production writes, transactions, or persistent state changes | **Not allowed** | TODO | None; use an authorized local, test, or staging environment for state-changing validation | Production mutations are prohibited, including writes, deletes, privileged actions, callbacks, and persistence | N/A — prohibited |
| Local authentication, authorization, and role-boundary testing | **Allowed** | Isolated local target copy and synthetic local identities/tenants | Exercise local roles, boundaries, and privilege changes in disposable state | No live identities or remote services; reset local state after testing | This template's local-only testing baseline |
| Authentication, authorization, and role-boundary testing on a remote deployment | **Conditional — authorize the exact deployment, roles, and actions** | TODO | TODO | Use approved test identities and synthetic data; specify permitted cross-role actions and stop conditions | TODO |
| Local automated scanning, fuzzing, and high-volume test inputs | **Allowed** | Isolated local target copy or process | Local scanners, fuzzers, and generated inputs that make no external requests | Set per-run CPU, memory, disk, duration, and stop thresholds; do not scan remote dependencies by default | This template's local-only testing baseline |
| Automated scanning, fuzzing, or high-volume requests against a remote asset | **Not allowed unless explicitly permitted** | TODO | TODO | Include request rate, concurrency, duration, and stop threshold | TODO |
| Load, availability, or resource-exhaustion testing against isolated local processes | **Allowed** | Researcher-controlled local machine/container/network only | Local stress tests | Set per-run resource caps and a stop threshold; prevent requests from reaching remote services | This template's local-only testing baseline |
| Load, availability, or resource-exhaustion testing against a remote asset | **Not allowed unless explicitly permitted** | TODO | TODO | Include capacity limits and stop threshold | TODO |
| State-changing actions or exploit-chain validation in a disposable local copy | **Allowed** | Isolated local target copy, fork, emulator, or private local testnet | Local writes, deletes, privilege changes, callbacks, and controlled impact reproduction | No remote writes or egress; reset disposable state afterward and keep the baseline unchanged | This template's local-only testing baseline |
| State-changing actions or exploit-chain validation on a remote test/staging/testnet deployment | **Conditional — authorize the exact deployment and proof actions** | TODO | Specify allowed writes, deletes, privilege changes, callbacks, and controlled impact proof | Specify test identities/assets, limits, cleanup/rollback, and the required stop point; production writes remain prohibited | TODO |
| Synthetic credentials, accounts, and data created and used locally | **Allowed** | Isolated local target copy | Generate local roles, accounts, and synthetic records to exercise the code | Do not use real credentials or real end-user data | This template's local-only testing baseline |
| Remote test credentials, accounts, or data | **Not allowed unless explicitly permitted** | TODO | Specify account roles and allowed data/actions | Use only approved test identities and synthetic data; do not access or retain real end-user data | TODO |
| Local data-access, export, callback, or egress-path validation | **Allowed** | Synthetic local records and loopback-only or otherwise isolated local destinations | Reproduce local data flows and callbacks | Do not send data to external destinations; no real end-user data | This template's local-only testing baseline |
| Data-access, export, callback, or egress to a remote destination | **Not allowed unless explicitly permitted** | TODO | Use synthetic records and an approved test destination only | Specify data limits, destination, and stop point; no real end-user data | TODO |
| Persistence or long-lived access validation in a disposable local environment | **Allowed** | Isolated local target copy | Reproduce local persistence behavior | No external systems or accounts; record cleanup and reset local state after testing | This template's local-only testing baseline |
| Persistence or long-lived access validation on a remote asset | **Not allowed unless explicitly permitted** | TODO | Specify the exact test asset and permitted persistence mechanism | Include cleanup, rollback, and maximum duration | TODO |
| Third-party services, integrations, or accounts (including RPCs and indexers) | **Not allowed unless explicitly permitted** | TODO | TODO | TODO | TODO |
| Social engineering or testing human workflows | **Not allowed unless explicitly permitted** | TODO | TODO | TODO | TODO |

### Global test limits and stop conditions
- Authorized audit/testing period and maximum total testing duration: TODO for remote activity; follow any narrower engagement window
- Maximum request rate / concurrency / duration for remote activity: TODO; local-only tests use per-run resource caps and do not contact remote services
- Production read-only request rate, concurrency, query/data limits, and API identity (if applicable): TODO
- Permitted test window and time zone for remote activity: TODO; local-only activity follows any narrower engagement terms
- Data handling and cleanup requirements for remote data: TODO; local-only tests use synthetic data and follow the baseline above
- Prohibited actions and immediate stop triggers: TODO
- Emergency contact / escalation path: TODO

If authorization or a limit is missing, do not perform that remote activity. Record the gap and continue with independent activities explicitly allowed above, including the local-only baseline. Do not test against live users or retrieve or retain real user data. Demonstrate remote impact with the least data and state change necessary, using synthetic test assets and an approved destination wherever possible. Remote persistence and export-path tests require explicit permission and cleanup/stop conditions in their rows.

## Prior work
- Relevant audit reports, advisories, and comparable-incident research (with source/date): TODO
- Existing issue tracker and known mitigations: TODO
