#!/bin/bash

fruits=("Apple" "Banana" "Orange" "Mango")

echo "All elements by using while loop :"

i=0

while [ $i -lt ${#fruits[@]} ]; do
	echo ${fruits[$i]}
	let i++
done

echo "All elements by using for loop :"

for i in ${fruits[@]};do
	echo $i
done

for ((i=0; i<${#fruits[@]}; i++)); do
	echo ${fruits[i]}
done

