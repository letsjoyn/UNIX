#!/bin/sh
a=0
echo "Enter database name: "
read fname
echo "Enter number of students: "
read n
while [ $a -lt $n ]
do
        echo "Enter student id: "
        read sid
        echo "Enter sname: "
        read sname
        echo "Enter sem: "
        read sem
        echo "Enter dept: "
        read dept
        a=$(expr $a + 1)
        echo "$sid $sname $sem $dept" >> $fname
done

echo "Student details"
sort $fname | uniq

echo "Dept with stud count"
cut -d ' ' -f4 $fname | sort | uniq -c
