# Isolated reproductions

Keep each hypothesis's code and static reproduction instructions in `poc/H-###/`. Use descriptive filenames for separate cases; use synthetic fixtures where possible. Put helpers shared by hypotheses in this target's `poc/shared/` directory and reference them instead of duplicating code. Keep generated output in that attempt's evidence run folder, never beside or over the PoC source.

For a new hypothesis, copy `POC_README_TEMPLATE.md` to `poc/H-###/README.md` and adapt it. Put each separate case in its own clearly named file or test, while keeping shared synthetic fixtures in that hypothesis folder.

Each `poc/H-###/README.md` should document:

- Linked hypothesis ID and a short purpose statement.
- Required target version, setup, dependencies, and test identities by role (never credentials).
- Coverage-plan case IDs, conditions covered, and expected result for each.
- A copyable invocation using placeholders or named environment variables for secrets; never put secret values in documentation.
- Synthetic fixture setup and cleanup/rollback steps.
- Known limitations and the `SCOPE.md` default non-production authorization reference plus any program-specific restriction or limit for remote activity. No separate permission is needed for each test case.

Create each run record with `scripts/new-evidence-run.sh H-###` before the attempt. Record the exact invocation, tested version, observed result, and tool/runtime versions in its new `evidence/H-###/runs/<UTC-run-id>/manifest.yaml`. The PoC README describes how to run it; the manifest is the canonical record of what happened in a specific run. The helper only prepares a local folder and never executes tests.

For any PoC that can send network traffic, require the target to match the in-scope target and check `SCOPE.md` for applicable program exclusions or limits. Do not make a reusable harness default to an arbitrary host or scan target. Local-only PoCs should not make implicit network requests; document and disable or mock remote dependencies unless the corresponding target activity is within the default non-production authorization.
