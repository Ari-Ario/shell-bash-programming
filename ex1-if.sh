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

# first and/or conventional method if-else
if [ $op == "+" ]
then
    echo "$num1+$num2" | bc
else
    if [ $op == "-" ]
    then
        echo "$num1-$num2" | bc
    else
        if [ $op == "*" ]
        then
            echo "$num1*$num2" | bc
        else
            if [ $op == "/" ]
            then
                echo "$num1/$num2" | bc -l
            else
                echo "$op is not included in [+.-,*,/]. Try again."
            fi
        fi
    fi
fi

# opening/creating a file in the same directory using if-elif
if [ -f recorder.txt ]
then
    #cat >> cal-record.txt
    echo -e "$num1 $op $num2 = \c" >> recorder.txt
else
    touch recorder.txt
    #cat > cal-record.txt
    echo -e "$num1 $op $num2 = \c" >| recorder.txt
fi

# second method using if-elif-else
if [ $op == "+" ]
then
    echo "$num1+$num2" | bc >> recorder.txt
elif [ $op == "-" ]
then
    echo "$num1-$num2" | bc >> recorder.txt
elif [ $op == "*" ]
then
    echo "$num1*$num2" | bc >> recorder.txt
elif [ $op == "/" ]
then
    echo "$num1/$num2" | bc -l >> recorder.txt
else
    echo "$op is not included in [+.-,*,/]. Try again."
fi