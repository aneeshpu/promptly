function is_git()
{
	git rev-parse --git-dir 2> /dev/null
}



if [ $(is_git) ];
then
	echo "($(git rev-parse --abbrev-ref HEAD))"
else
	:
fi
