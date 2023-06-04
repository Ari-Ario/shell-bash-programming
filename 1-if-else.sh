#! /bin/bash

# reading an input of user
echo -e "enter the name of file/folder, who you want to delet: \c"
read filename
# if-elif-else block to delet a directory or a file

# -f findes a file name
if [ -f $name ]
then
	# this line asks the permission in case of deleting file
	echo -e "the file exists, do you want to delet it anyway? y, n >> \c"
	read yn
	# this if block takes y as permision to and delets the file
	if [ $yn == "y" ]
	then
		# this line removes the file in case of permission
		rm $name # or "sudo rm -rf $name" to delrt it forcefully
	# this ellif block takes n as no permitsion and prints no permision
	elif [ $yn == "n" ]
	then
		# this line just notifies, no permision to delet.
		echo "No permision to delet the file. Try again, if you want."
	# this else block will be executed in case of no y/n
	else
		# this line notifies, that the key was nither y nor n
		echo "False key, y for deleting, n for not deleting."
	# fi is finish command in if-else block
	fi

# -d findes a directory in case that the name is a directory name
elif [ -d $name ]
then
	# this line prints the directory name, and reads your y/n premision
	echo -e "the directory $name found. do you want proceed deleting? y, n >> \c"
	read yn
	# if-block delets the directory in case of y-input
	if [ $yn == "y"]
	then
		rmdir $name # or "sudo rm -rf $name" to delrt it forcefully
	# elif-block does not delet the directory and just prints sth
	elif [ $yn == "n"]
	then
		echo "No permision to delet the directory. Try again"
	# else-block will be executed in case that input is not y/n 
	else
		echo "For permision y or n must be entered. Try again"
	# fi for finish of the if-else block
	fi

# this line will be executed in case that the file/folder-name is not found
else
	echo "nither a file, nor a directory with this name found!"
fi