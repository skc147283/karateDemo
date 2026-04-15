# API Key Security for This Project

## Recommended approach
1. Keep API keys outside source code and feature files.
2. Load keys from environment variables:
   - OPENWEATHER_API_KEY
3. In Azure DevOps, store keys as secret variables or Key Vault references.
4. Rotate keys immediately if exposed in chat, screenshots, logs, or commit history.

## Local usage (macOS / zsh)
Set key for current shell session:

export OPENWEATHER_API_KEY="your_real_key"

Run tests:

mvn clean test

Or run only weather tests:

mvn -Dkarate.options="--tags @weather" test

## Azure DevOps usage
1. Create secret variable OPENWEATHER_API_KEY in pipeline variables, or link Key Vault variable group.
2. Pipeline already maps this variable into Maven task environment.

## What to avoid
1. Do not hardcode appid values in feature files.
2. Do not commit .env or secret properties files.
3. Do not paste real keys into tickets/chats.

## Pre-commit secret scanning (lightweight)
This repository includes a local pre-commit hook at `.githooks/pre-commit`.

Enable it once per clone:

./scripts/install-git-hooks.sh

What it does:
1. Scans only staged added lines before each commit.
2. Blocks commit if common secret patterns are found.
3. Prints matched lines so you can remove/move secrets.
