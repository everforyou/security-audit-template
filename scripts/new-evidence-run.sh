#!/bin/sh
set -eu

if [ "$#" -ne 1 ]; then
  printf '%s\n' "Usage: scripts/new-evidence-run.sh H-001" >&2
  exit 2
fi

hypothesis_id=$1
case "$hypothesis_id" in
  H-[0-9][0-9][0-9]) ;;
  *) printf '%s\n' "Expected a hypothesis ID like H-001." >&2; exit 2 ;;
esac

scripts_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd "$scripts_dir/.." && pwd)
cd "$repo_root"

template="evidence/RUN_MANIFEST_TEMPLATE.yaml"
if [ ! -f "$template" ]; then
  printf '%s\n' "Missing run manifest template: $template" >&2
  exit 1
fi

mkdir -p "evidence/$hypothesis_id/runs"
stamp_utc=$(date -u '+%Y%m%dT%H%M%SZ')
created_at_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
sequence=1

while :; do
  suffix=$(printf '%02d' "$sequence")
  run_id="${stamp_utc}-${suffix}"
  run_dir="evidence/$hypothesis_id/runs/$run_id"
  if [ ! -e "$run_dir" ]; then
    break
  fi
  sequence=$((sequence + 1))
done

mkdir "$run_dir"
manifest_tmp="$run_dir/manifest.yaml.tmp"
sed \
  -e "s/YYYYMMDDTHHMMSSZ-01/$run_id/g" \
  -e "s/YYYY-MM-DDTHH:MM:SSZ/$created_at_utc/g" \
  -e "s/H-001/$hypothesis_id/g" \
  "$template" > "$manifest_tmp"
mv "$manifest_tmp" "$run_dir/manifest.yaml"

printf 'Created %s/manifest.yaml\n' "$run_dir"
printf '%s\n' "Fill the manifest after the run; this helper does not execute the PoC."
