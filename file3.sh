#!/bin/bash

red="\e[31m"
green="\e[92m"
end="\e[0m"

function check(){
    which figlet &> /dev/null
    if [[ $? -ne 0 ]];then printf "${red}figlet command not found. Install using apt install figlet -y${end}\n"
        exit
    fi
    which lolcat &> /dev/null
    if [[ $? -ne 0 ]];then printf "${red}lolcat command not found. Install using apt install lolcat -y${end}\n"
        exit
    fi
    which host &> /dev/null
    if [[ $? -ne 0 ]];then printf "${red}host command not found.${end}\n"
        exit
    fi
}

function center() {
	termwidth="$tput cols"
	padding="$(printf '%0.1s' ={1..500})"
	printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"

function help(){
    figlet -c "Sub-Enum" | lolcat
    #center "HELP"
    printf  "+--------------------------------------------+\n" | lolcat
    printf "${green}-d/--domain${end}\t:\t${green}Domain as target [e.g. : example.com]${end}\n"
    printf "${green}-f/--file${end}\t:\t${green}file or list of subdomains [e.g. :file.txt]${end}\n"
    printf "${green}-h/--help${end}\t:\t${green}Print help${end}\n"
}

function main(){
		while read sub;do
        		if host "$sub.$domain" &> /dev/null;then
            			printf "${green}$sub.$domain${end}\n"
        		fi
		done < ${file}
}

check

while [ -n "$1" ]; do

	case $1 in
		"-d"|"--domain")
    	    		domain=${2}
	   		shift
       		 ;;
	 	"-f"|"--file")
	    		file=${2}
	    		shift
	    	;;
    		"-h"|"--help")
        		help
			exit 0
	       	;;
    		*)
        		printf "${red}Invalid argument: Use${end} ${green}-h/--help${end} ${red}for help${end}\n"
        	;;
	esac
	shift

done

if [[ -z $domain ]];then
      printf "domain name not provided or use -h/--help \n"
      exit
fi

if [[ -z $file ]];then
      printf "file not found or use -h/--help \n"
      exit
fi

main $@
