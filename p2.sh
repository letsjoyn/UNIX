echo "Enter the name of first file:"
read file1
echo "Enter the name of second file:"
read file2
cmp -s $1 $2
if [ $? -eq 0]
then 
echo "Both files are equal"
rm $file2
else
 echo "Both files are unequal"
 fi
