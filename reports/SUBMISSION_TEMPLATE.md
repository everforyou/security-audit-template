# [Vulnerability title]

## Summary
[Briefly describe the vulnerability, affected feature, triggering conditions, and demonstrated consequence.]

## Target and scope
- Project / program: [Name and program URL]
- In-scope asset: [Repository / contract / endpoint / binary / configuration]
- Exact tested version: [Commit SHA / release / image digest]
- Affected path and location: [File:line, function, endpoint, or component]

## Proposed severity and impact
- Proposed severity: [Use the program's rubric, if provided]
- Demonstrated security impact: [Specific affected security property, assets, users, or availability]
- Prerequisites and limitations: [Attacker access, privileges, required target state, environment]

## Root cause
[Explain the precise implementation flaw and why existing safeguards do not prevent it. Reference exact source locations.]

## Proof of Concept

### Environment and setup
- System and tool versions: [OS, runtime, dependencies, testing framework]
- Target version / commit: [Exact identifier]
- Setup steps: [Commands to initialize a clean, isolated test environment]

### Reproduction steps
1. [Step 1, including exact inputs]
2. [Step 2]
3. [Step 3]

### PoC code or test
[Include a minimal, self-contained code block or attach the minimal test file. Provide the path relative to this audit project, e.g., `poc/repro.test.ts`. Do not rely on private paths alone when submitting externally.]

### Run command
```sh
# Replace with the exact reproducible command
TODO
```

### Expected result
[Describe intended secure behavior.]

### Actual result
[Include the observed result, relevant output, logs/traces, and before/after state. Redact secrets and user data.]

### Evidence and repeatability
- Attached sanitized evidence: [Filenames, log excerpts, traces, screenshots as applicable]
- Repeatability: [e.g., successful in N/N clean local runs; state if not verified]
- Production testing: [Not performed / explicitly authorized and documented]

## Exploit scenario
[Describe the realistic attack sequence and connect each step to demonstrated evidence. Clearly label any untested extrapolations.]

## Suggested remediation
[Scoped mitigation and a regression test idea, if useful.]

## Prior art and disclosure notes
- Related known issues / prior audits: [Results or pending]
- Submission date and reference: [Complete after submission]
