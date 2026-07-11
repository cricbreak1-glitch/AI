#!/bin/bash

# Define the Conventional Commits regex pattern
# Examples: "feat: description", "fix(scope): description", "docs!: description"
REGEX="^(feat|fix|docs|style|refactor|perf|test|chore|ci|build)(\([a-z0-9_-]+\))?!?: .+$"

echo "Validating Pull Request title: '$PR_TITLE'"

if [[ ! "$PR_TITLE" =~ $REGEX ]]; then
  echo "============================================="
  echo "❌ ERROR: Invalid Pull Request Title Format!"
  echo "============================================="
  echo "Your PR title must follow the Conventional Commits format."
  echo "Example: 'feat(auth): add google sign-in' or 'fix: resolve memory leak'"
  echo "Allowed prefixes: feat, fix, docs, style, refactor, perf, test, chore, ci, build"
  exit 1
else
  echo "============================================="
  echo "✅ SUCCESS: Pull Request title format is valid."
  echo "============================================="
  exit 0
fi
