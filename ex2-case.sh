#!/bin/bash

# The same calculator in case and recording it in a file
read -p "Enter first number: " num1

set -f
read -p "Enter an operation [+,-,*,/]: " op
set +f

read -p "Enter second number: " num2

#case block
case $op in
	"+")
		echo "$num1 + $num2" | bc
        ;;
    "-")
        echo "$num1 - $num2" | bc
        ;;
    "*")
        echo "$num1 * $num2" | bc
        ;;
    "/")
        echo "$num1 / $num2" | bc -l
        ;;
    *)
        echo "Operator not included in [+,-,*,/]. Try again"
        ;;
esac
