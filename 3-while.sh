#! /bin/bash

#sytax like all other programming-languages
num=1
while [ $num -le 5 ]
do
	echo "$num"
	(( num++ )) #if while is not controled, then executes infinite 
done


#explaining syntax with an example of reading text from a file

#entering path of a file or file-name in the same directory
echo -e "enter the file-path: \c"
read path

#reading line by line using terminal-command cat, -r escapes backslash, IFS is for internal fill separator
cat $path | while IFS=" " read -r line
do
	#printing a line
	echo $line
	#waiting a second to print the next line
	#sleep 1
done

#using redirection and printing line by line, IFS;Internal fill separator is recommended
while IFS= read line
do
	echo $line
	sleep 1
#redirecting our own file 3-while.sh to while loop
done < 3-while.sh #or just write $path to print above path