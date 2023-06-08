#!/bin/bash

# An example of different functions, which execute different functionality with extra syntax

# Colon in combination with > redirection operator, trancates a file to zero length. It creates the file, if it does not exist

function zerofile () {
	: > $1
	# equivalant to 
	# cat /dev/null >da.txt
}
# Colon in combination with >> redirection operator, has no effect on the existing file; but it creates one, in case it does not exist

function createfile () {
	: >>$1
}


# Function to make a directiry

makedir () {
	mkdir $1
}

# A single colon in a function is a place holder and is interpreted as NOP or do nothing

donothing () {
	# NOP, just placehoder and doing nothing
	:
}

check () {
	for item in /{,Users/}ari/Documents/gitfolder/* # Copy-paste a directory
	do
		if [ -f "$item" ]
		then
			:
		else
			echo "$item is a folder."
			ls $item
		fi
		echo "---------------------------------------------------"
	done
}

read -p "To create a file [f], and to creat a directory [d]: " input
read -p "Give it a name: " name

case $input in
	"f" )
		check
		read -p "Watch if your file exists. Do you want to proceed [y/n]: " yn
		case $yn in
			"y" )
				zerofile $name
				echo "file $name created; or trancated to zero, if existed."
				;;
			"n" )
			echo "you entered $yn. It does nothing"
				donothing
				;;
			* )
				echo "False keyword!"
				;;
		esac
		;;
	"d" )
		makedir $name 
		;;
	* )
		echo "False input $input. It does nothing."
	 	donothing
	 	;;
esac
exit 0
