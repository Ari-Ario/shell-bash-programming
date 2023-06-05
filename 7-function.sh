#! /bin/bash

# first form and syntax of a function
function list(){
	ls -al
}

# second form and esier syntax of function
write(){
	text=$@
	echo $text
}
# a function to exit execttion of the code
quit(){
	exit
}

# global variable
text="Functions in this code: list of files/directories, print and exit!"
echo "global: $text"

echo -e "or assign the variable and change above text: \c"
read text

# passing it to the local variable if function text
write "passing to function: $text" #instead of echo $text

# local variable is global and your input text is assigned to text variable in function
echo "this is text from function: $text"

# exiting the execution using quit function
echo "finish execution of this code"
echo "-------------------end--------------------"
quit

# rest of code will not be executed; for example function list
list
echo "------------------list of all directories/fiels above-----------------"
