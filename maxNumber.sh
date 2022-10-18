
#!/bin/bash


max(){
	if [ $1 -gt $2 ]; then 
		printf "Max no ix $1\n"
	elif [ $1 -lt $2 ]; then
		printf "Max no is $2\n"
	else 
		printf "Both no is equal\n"
	fi
}

max $@
