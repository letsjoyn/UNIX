if [ -d "$1" ]
then
    echo "File is a directory"
elif [ -f "$1" ]
then
    echo "File is a regular file"
else
    echo "File is something else"
fi
