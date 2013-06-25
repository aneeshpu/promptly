UNPUSHED_COMMIT_NO=0
git rev-parse --git-dir >/dev/null 2>&1
if [ "$?" -eq 0 ]
then
	UNPUSHED_COMMIT_NO=$(git log @{u}.. --pretty=oneline 2>/dev/null| wc -l)
fi

if [ "$UNPUSHED_COMMIT_NO" -gt 0 ]
then
	echo "($UNPUSHED_COMMIT_NO)"
fi
