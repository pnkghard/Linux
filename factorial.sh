
#! /bin/bash

clear

factorial(){
	num=$1
	fact=1

	if [ $num -eq 1 ] || [ $num -eq 2 ]; then
		echo "Factorial of $num is $fact"
		exit 1
	fi

	while [ $num -gt 1 ]; do
		let fact=fact*num
		let num--
	done

	echo "The factorial of $1 is $fact"
}

factorial $@
