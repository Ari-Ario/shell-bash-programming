#! /bin/bash
# first (above) line is obligatory, that refers to shell directory /bin/bash

# printing a simple text:
echo "text for test"
# execute file just by writing ./filename. But the file must have execution mod:; write in terminal: chmod +x filename, then ./filename

# reading an input from user:
echo "enter text, signs or numbers:"
read input
echo "your input is: $input"
# reading user-input on the same line:
echo -e "enter sth: \c"
read sth
echo "you input is: $sth"

# Arithmetic calculations:
# First for decimal numbers:
echo "first method of operations on decimal: $( expr 5 + 11 )"
# or
echo "second method for arithmetic operations: $(( 5 + 11 ))"
# The same for all others except multiplication, which needs an extrta \*
echo "$( expr 5 - 11 )"
echo "$(( 5 - 11 ))"
echo "$( expr 5 \* 11 )"
echo "$(( 5 * 11 ))"
echo "$( expr 11 / 5 )"
echo "$(( 11 / 5 ))"
echo "$( expr 11 % 5 )"
echo "$(( 11 % 5 ))" #remainder

# Arithmetic operations for float
echo " 1.2 + 2.3 " | bc
echo " 2.3 - 1.2 " | bc
echo " 1.2 * 2.3 " | bc
echo " 2.3 / 1.2 " | bc

# Arithmetic operations are the same with variables; for example:
echo -e "enter first number: \c"
read num1
echo -e "enter second number: \c"
read num2
echo "scale=2; $num1 / $num2" | bc -l #scale gives the number of floats back

# array:
os=("Mac", "Linux", "Windows")
# changing second element
os[1]="Ubuntu"
# printing the second element
echo "${os[1]}"
# appending an element as 20th
os[20]="iOS"
# printing all elements
echo "${os[@]}"
# printing the positions 
echo "${!os[@]}" #result is: 0 1 2 20
# counting (number of) elements
echo "${#os[@]}"

#readonly variables and functions, which cannot be overwritten, for example:
var=10
readonly var
# var=11 has an error output

fun(){
    echo "inside a function"
}
readonly -f fun
# fun(){ echo "sth"} has an error output too

# pid of the running scrit and killing the execution from another termianl
echo "pid is: $$"
kill -9 #pid

# push ctrl+c to terminate an execution and ctrl+z to stop it
# push ctrl+d to terminate writting (cat) of a text

# syntax of more complex programms is in other sections with examples
# at last you find some more examples with name: ex....


# terminal-commands are very important, visit both websites:
# https://explainshell.com
# https://devdocs.io
