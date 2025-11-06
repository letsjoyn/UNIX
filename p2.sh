#!/bin/sh
echo "Read first file: "
read f1
echo "Read file 2: "
read f2
cmp -s $f1 $f2
if [ $? -eq 0 ]
then
        echo "Both files are equal"
        rm $f2
else
        echo "Both are unequal"
fi
