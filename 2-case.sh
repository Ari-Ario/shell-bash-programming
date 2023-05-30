#! /bin/bash

#case is a form of if-else but with diffrent syntax
#a calculator which keeps track of calculations

#readind first number from user-input as num1
echo -e "Enter first number: \c"
read num1

#reading the operation sign from list [+,-,*,/] as user-input
echo -e "Enter operation from [+,-,*,/]: \c"
read op

#reading second number from user-input as num2
echo -e "Enter second number: \c"
read num2

#printing the pre-calculation text and waiting for result on the same line
echo -e "the resulut of $num1 $op $num2 = \c"

#case-block to operate the result
case $op in
	"+" )
		echo "$num1 + $num2" | bc
	;;
	"-" )
		echo "$num1 - $num2" | bc
	;;
	"*" )
		echo "$num1 * $num2" | bc
	;;
	"/" )
		echo "$num1 / $num2" | bc
	;;
	* )
		echo "Not a valid operation $op. try again!"
		 #this lin executes this file again, in case of an operation out of list [+,-,*,/]
		"./"2-case.sh
	;;
#end of case-block with esac
esac
