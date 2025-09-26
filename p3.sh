a=`ls -l | grep $1 | cut -b1`
if [ $a = 'd' ]
then
	echo "File is a directory"
else
	if [ $a = '-' ]
	then
	       	echo "file is a regular file"
	else
		echo "file is different"
	fi
fi

