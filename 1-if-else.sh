#! /bin/bash

#reading an input of user
echo -e "enter the name of file/folder, who you want to delet: \c"
read filename
#if-elif-else block to delet a directory or a file

# -f findes a file name
if [ -f $name ]
then
	#this line asks the permission in case of deleting file
	echo -e "the file exists, do you want to delet it anyway? y, n >> \c"
	read yn
	if [ $yn == "y" ]
	then
		#this line removes the file in case of permission
		rm $name
	elif [ $yn == "n" ]
	then
		#this line just notifies, no permision to delet.
		echo "No permision to delet the file. Try again, if you want."
	else
		#this line notifies, that the key was nither y nor n
		echo "False key, y for deleting, n for not deleting."
	fi

# -d findes a directory
elif [ -d $name ]
then
	echo -e "the directory $name found. do you want proceed deleting? y, n >> \c"
	read yn
	if [ $yn == "y"]
	then
		rm "-r $name"
	elif [ $yn == "n"]
	then
		echo "No permision to delet the directory. Try again"
	else
		echo "For permision y or n must be entered. Try again"
	fi

else
	echo "nither a file, nor a directory with this name found!"
fi