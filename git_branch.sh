function is_git()
{
	if [ -d .git ]
	then
		echo .git
	else
		git rev-parse --git-dir 2> /dev/null
	fi
}



if [ "$(is_git)" == ".git" ];
then
	git branch | grep \* | awk '{print "("$2")"}'
else
	:
fi
