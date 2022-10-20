#! /bin/bash

#create employee list

clear

while [ true ]; do
	read -p "Enter emp ID     : " empid
	read -p "Enter emp Name   : " name
	read -p "Enter emp Salary : " sal

	echo "$empid:$name:$sal" >> emp.txt

	read -p "Do you want to add more records [y/n] : " ch

	case $ch in
		 y)
			continue
			;;
		 n)
			break
			;;
	esac
done

'while read line; do
	printf "$line\n"
done < emp.txt'

cat emp.txt  | column -t -s ":"
