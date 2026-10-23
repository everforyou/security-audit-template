# Architecture and attack surface

- Target version / commit: TODO
- Entry points and externally reachable interfaces: TODO
- Data flow and sensitive assets: TODO
- Identity, authentication, authorization, and privileged roles: TODO
- Trust boundaries and external dependencies: TODO
- Security invariants / expected properties: TODO
- Actual build and test workflow: TODO

## Attack-surface and test-condition inventory

Inventory material components and reachable operations before finalizing the hypothesis queue. Link each item to source/configuration and at least one hypothesis ID, or document why inspection found no concrete security hypothesis for it. Do not leave material components unreviewed; record each remaining gap with its next action.

| Component / operation | Entry point and attacker-controlled inputs | Roles and trust boundary | Sensitive asset / invariant | Relevant state, configuration, or version conditions | Available test environments and exact setup | Candidate IDs / open gap |
|---|---|---|---|---|---|---|
| TODO | TODO | TODO | TODO | TODO | TODO | TODO |

Consider all applicable local builds and tests, emulators, offline or RPC-backed forks, private or shared target testnets, and staging deployments. The `SCOPE.md` default authorizes non-production testing of the in-scope target; check for explicit program exclusions and limits, but do not require per-case permission. Record available environments and setup. A missing environment leaves only that condition pending and does not stop local or other available testing. Record meaningful role, boundary, input, state, configuration, and ordering variations rather than trying arbitrary payloads without a code-based reason.
