#! /bin/bash

read -p "Enter Number of values : " n

for (( i=0; i<n; i++ )); do
	read -p "Enter the $i : " NUM[$i]
done

echo "Array element : ${NUM[@]}"
