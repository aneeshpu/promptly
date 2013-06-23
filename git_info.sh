branch=$(git_branch.sh)
unpushed_commits=$(git_unpushed_commits.sh)
echo "$branch$unpushed_commits"
