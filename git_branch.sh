function is_git()
{
	git rev-parse --git-dir 2> /dev/null
}



if [ $(is_git) ];
then
	git branch | grep \* | awk '{print "("$2")"}'
else
	:
fi
