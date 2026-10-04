#!/usr/bin/env bash
set -euo pipefail

week="${1:-}"
if [[ $# -ne 1 || ! "$week" =~ ^[1-9][0-9]*$ ]]; then
  echo "Usage: bash scripts/new-journal.sh WEEK_NUMBER (for example: 4)" >&2
  exit 1
fi

cd "$(dirname "${BASH_SOURCE[0]}")/.."

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Save and commit your current changes before starting another journal." >&2
  exit 1
fi

git fetch origin

branch="Journal-$week"
file="journals/week-$week.md"

if ! git cat-file -e origin/main:WORKFLOW.md 2>/dev/null; then
  echo "Merge the journal-file organization into GitHub main before starting a new week." >&2
  exit 1
fi

if git cat-file -e "origin/main:$file" 2>/dev/null; then
  echo "$file already exists on main. Choose a new week number." >&2
  exit 1
fi

if git show-ref --verify --quiet "refs/heads/$branch"; then
  echo "$branch already exists. Continue it with: git switch $branch" >&2
  exit 1
fi

if git show-ref --verify --quiet "refs/remotes/origin/$branch"; then
  echo "$branch already exists on GitHub. Continue it with: git switch --track origin/$branch" >&2
  exit 1
fi

git -c branch.autoSetupMerge=false switch -c "$branch" origin/main
mkdir -p journals
printf '# Week %s\n\n## Discussion\n\n' "$week" > "$file"

printf '\nWrite your entry in %s.\n\n' "$file"
printf 'When ready:\n  git add %s\n  git commit -m "Add Week %s journal"\n  git push -u origin %s\n' "$file" "$week" "$branch"
printf '\nOn GitHub, open a PR with base: main and compare: %s.\n' "$branch"
