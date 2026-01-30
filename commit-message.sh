COMMIT_MSG_FILE=$1
COMMIT_MSG=$(cat "$COMMIT_MSG_FILE")

REGEX="^(feat|fix|docs|style|refactor|test|chore)(\(.+\))?: (.+)"
if ! echo "$COMMIT_MSG" | grep -qE "$REGEX"; then
	echo "ERROR: The commit message does not match the Conventional Commits format."
  	echo "Example: feat(scope): A short description of the change"
	exit 1
fi

echo "All good"