#! /bin/bash

#reading an input of user
echo -e "enter the name of file, who you want to delet: \c"
read filename

#if-elif-else block
if [ -f $filename ]
then
	#this line asks the permission in case of deleting file
	echo "the file exists, do you want to delet it anyway? y, n"
	echo -e "\c"
	read yn
	if [ $yn == "y" ]
	then
		#this line removes the file in case of permission
		rm $filename
	elif [ $yn == "n" ]
	then
		#this line just notifies, no permision to delet.
		echo "No permision of deleting the file. Try again, if you want."
	else
		#this line notifies, that the key was nither y nor n
		echo "False key, y for deleting, n for not deleting."
	fi
fi