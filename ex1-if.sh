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

# first and/or conventional method if-else; only to print in terminal
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

# opening/creating a file in the same directory using if-elif; recording it in a file: recorder.txt
if [ -f recorder.txt ]
then
    # if the file recorder.txt exists, it appends to it
    echo -e "$num1 $op $num2 = \c" >> recorder.txt
else
    # if file recorder does not exist, it will be created
    touch recorder.txt
    # and it will be overwritten forcefully with command >|
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
    # if your operation is not correct, it will not be recorded
    echo "$op is not included in [+.-,*,/]. Try again."
    echo "False Operation" >> recorder.txt
fi
exit 0