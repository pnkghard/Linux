#! /bin/bash


path=$1


if [ -d $path ]; then
	printf "$path Directory "
	stat -c '%a' $path
	printf "\n"
elif [ -f $path ]; then
	printf "$path File "
	stat -c '%a' $path
	printf "\n"
else
	echo "$path not exist..."
fi
