#! /bin/bash

# simple syntax
for item in a b c d
do
	echo $item
done

# for-loop which handles terminal-commands in the same directory

for comm in ls pwd date
do
	# this line prints the written line befor every command
	echo -----------------$comm------------------
	# this line carry out the commands
	$comm
done


# or more precisely for files and directories in current working directory

echo "||||||||||||||||||||||||||||||||||||||||||||||||"

for item in *
do
	# it searchs if the item is a directory
	if [ -d $item ]
	then
		echo "directory: $item"
	# if it is not a directory then it is a file
	else
	# elif [ -f $item ] ; second possibility
		echo "file: $item"
	fi
done

# another syntax of for loop
for (( i=1; i<=10; i++))
do
	# up to 6 but without by break statment
	if [ $i -ge 6 ]
	then
		break
	# number 3 will be skipped by continue statment
	elif [ $i -eq 3 ]
	then
		continue
	fi
	# printing the number
	echo "number$i"
done
