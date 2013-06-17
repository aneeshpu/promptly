filename=`ls ~/.m2/*settings.xml`
base_filename=`basename $filename`

if [ ${base_filename:0:1} == '_' ]
then
	mv ~/.m2/{_,}settings.xml
else
	mv ~/.m2/{,_}settings.xml
fi

echo "moved $filename to `ls ~/.m2/*settings.xml`";
