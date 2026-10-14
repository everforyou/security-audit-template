# Auxiliary scripts

Place local static analysis, dependency inspection, fixture generation, or setup utilities here. Record dependencies and avoid implicit network actions.

`new-evidence-run.sh H-001` creates a unique UTC evidence run folder and copies the manifest template with the hypothesis ID and timestamp filled in. It does not run a PoC or contact a target. Complete the manifest after the test and preserve the run folder unchanged.
