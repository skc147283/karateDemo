#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

if ! git rev-parse --git-dir >/dev/null 2>&1; then
	echo "This folder is not a git repository."
	echo "Initialize git first (git init) or run this script from a cloned repository."
	exit 1
fi

git config core.hooksPath .githooks

echo "Git hooks path set to .githooks"
echo "Pre-commit secret scan is now active for this repository."
