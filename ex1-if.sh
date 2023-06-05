#!/bin/bash

# A simple calculator of if-else comprehension

echo -e "Enter first number: \c"
read num1

#disable globbing to read * as literal
set -f
# another form to read directly
read -p "Enter the operation [+,-,*,/]: " op
#enable globbing again
set +f

read -p "Enter second number: " num2

echo -e "$num1 $op $num2 = \c"

if [ $op == "+" ]
then
    echo "$num1+$num2" | bc
elif [ $op == "-" ]
then
    echo "$num1-$num2" | bc
elif [ $op == "*" ]
then
    echo "$num1*$num2" | bc
elif [ $op == "/" ]
then
    echo "$num1/$num2" | bc -l
else
    echo "$op is not included in [+.-,*,/]. Try again."
fi