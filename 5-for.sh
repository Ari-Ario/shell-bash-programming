#! /bin/bash

# simple syntax
for item in a b c d
do
	echo $item
done

#for-loop which handles terminal-commands in the same directory

for comm in ls pwd date
do
	#this line prints the written line befor every command
	echo -----------------$comm------------------
	#this line carry out the commands
	$comm
done


#or more precisely for files and directories in current working directory

echo "||||||||||||||||||||||||||||||||||||||||||||||||"

for item in *
do
	if [ -d $item ]
	then
		echo "directory: $item"
	else
		echo "file: $item"
	fi
done
