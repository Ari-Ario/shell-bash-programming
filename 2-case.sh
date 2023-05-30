#! /bin/bash

#case is a form of if-else but with diffrent syntax
#a calculator which keeps track of calculations

echo -e "Enter first number: \c"
read num1

echo -e "Enter operation from [+,-,*,/]: \c"
read op

echo -e "Enter second number: \c"
read num2

echo -e "the resulut of $num1 $op $num2 = \c"
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
		"./"2-case.sh #it executes this file again
	;;
esac
