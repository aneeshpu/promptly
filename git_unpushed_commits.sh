UNPUSHED_COMMIT_NO=0
GIT_BRANCH=$(git rev-parse --git-dir 2>/dev/null)
if [ "$GIT_BRANCH" == ".git" ]
then
	UNPUSHED_COMMIT_NO=$(git log @{u}.. --pretty=oneline 2>/dev/null| wc -l)
fi

if [ "$UNPUSHED_COMMIT_NO" -gt 0 ]
then
	echo "($UNPUSHED_COMMIT_NO)"
fi
