#! /bin/bash

#explaining syntax with an example of reading text from a file

echo -e "enter the file-path: \c"
read path

cat $path | while SLR= read -r line
do
	echo $line
done
