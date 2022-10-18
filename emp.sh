#! /bin/bash

while [ true ]; do
	read -p "Enter employee number : " eno
	read -p "Enter employee name : " name
	read -p "Enter employee salary :" sal

	echo "$eno : $name : $sal " >> emp.txt

	read -p "Do you want to insert one more record [y/n] : " op
	case $op in
		[yY] | [yY][eE][sS] )
			continue
			;;
		[nN]|[nN][oO] )
			break
			;;
	esac
done
echo "Insertion done"


echo "Sysntax-I"
cat emp.txt | while read line; do
	printf "$line\n"
done


echo "syntax - II"
while read line; do
	echo "$line"
done < emp.txt
