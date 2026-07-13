# #!/bin/bash

# # Define the Conventional Commits regex pattern
# REGEX="^LEGALDMS:[^0-9]+$"

# echo "Validating Pull Request title: '$PR_TITLE'"

# if [[ ! "$PR_TITLE" =~ $REGEX ]]; then
#   echo "============================================="
#   echo "❌ ERROR: Invalid Pull Request Title Format!"
#   echo "============================================="
#   echo "Your PR title must follow the Conventional Commits format."
#   # echo "Example: 'feat(auth): add google sign-in' or 'fix: resolve memory leak'"
#   # echo "Allowed prefixes: feat, fix, docs, style, refactor, perf, test, chore, ci, build"
#   exit 1
# else
#   echo "============================================="
#   echo "✅ SUCCESS: Pull Request title format is valid."
#   echo "============================================="
#   exit 0
# fi

#!/bin/bash

# Get the PR title from the first argument
PR_TITLE="$1"

# Check if the title is empty
if [ -z "$PR_TITLE" ]; then
    echo "Error: PR title is empty."
    exit 1
fi

# Check for any numbers (0-9) using a regular expression
if [[ "$PR_TITLE" =~ [0-9] ]]; then
    echo "Validation Failed: PR title contains numbers."
    echo "Title: \"$PR_TITLE\""
    exit 1
else
    echo "Validation Passed: PR title contains no numbers."
    echo "Title: \"$PR_TITLE\""
    exit 0
fi

