#! /bin/bash

mkdir folder

cd folder

mkdir folder{1..100}

n=1

while [ $n -lt 100 ]; do
	cd folder${n}
	echo "I'm file $n" > file$n.txt
	let n++
	cd ..
done
