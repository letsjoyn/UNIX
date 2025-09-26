#! /bin/sh
a=0
echo "Enter the Database Name:"
read fname
while [ $a -lt 5 ]  
do
	echo "Enter ID of Student: "
	read sid
	echo "Enter Name of Student: "
	read sname
	echo "Enter Semester of Student: "
	read sem
	echo "Enter Dept of Student: "
	read dept
	a=`expr $a + 1`  
	echo $sid $sname $sem $dept >> $fname   
done
cat $fname | cut -d' ' -f2,4   
sort -k4 $fname | cut -d' ' -f4 | uniq -c

