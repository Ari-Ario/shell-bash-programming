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

#reading line by line using terminal-command cat, -r escapes backslash
cat $path | while SLR= read -r line
do
	#printing a line
	echo $line
	#waiting a second to print the next line
	sleep 1
done

#using redirection
