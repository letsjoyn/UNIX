echo Directort contents before:
ls
for src in $*
do
	dest=`echo $src | tr "[a-z]" "[A-Z]"`
	mv $src $dest
done
echo Directory contents after;
ls
