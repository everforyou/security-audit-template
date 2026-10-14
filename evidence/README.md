# Evidence

Store sanitized outputs from each material test attempt in a new, immutable run folder:

```text
evidence/
  H-001/
    runs/
      20261013T183000Z-01/
        manifest.yaml
        stdout.txt
        trace.json
```

Create the folder and initial manifest with `scripts/new-evidence-run.sh H-###`. It assigns a UTC timestamp plus a sequence suffix and fills in the hypothesis ID. The manifest starts as `prepared`; after execution, mark it `completed`, `interrupted`, or `not_run` and record why. Complete the manifest and hash its artifacts, then treat the run record as immutable. Never overwrite or reuse a run folder, including for a failed or inconclusive attempt. Make artifact paths relative to the manifest and record a SHA-256 digest for each artifact where practical. Keep the exact tested PoC revision/hash and command in the manifest so later runs can be compared and reproduced.

Sanitize logs, traces, and screenshots before storing them. Never include credentials, tokens, real user data, or unredacted sensitive values. Prefer synthetic fixtures. If an artifact cannot be sanitized, do not place it in this workspace; retain it only in an approved secure location if permitted and record a safe reference and digest in the manifest.

The hypothesis record should contain a short result summary and the manifest path. Session logs and finding dossiers should link to the same canonical run record rather than duplicate full outputs. A finding dossier may summarize the proof steps needed by a reviewer, but should point to the PoC and run manifest for exact execution details.
