#!/bin/bash

# A simple calculator of if-else comprehension

echo -e "Enter first number: \c"
read num1

echo -e "Enter the operation [+,-,*,/]: \c"
read op

echo -e "Enter second number: \c"
read num2

echo -e "$num1 $op $num2 = \c"
if [ $op == "+" ]
then
    echo "$num1+$num2" |bc
fi