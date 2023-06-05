#! /bin/bash

# until-loop is the revers form of while loop, therefore we write the same code-example of while-loop in until-loop

# symple syntax
num=1
until [ $num -ge 5 ] # or (( $num > 5 ))
do
	echo $num
    # pre-encrementation diffrent from post-encrementation of while-loop example
    (( ++num ))
done

# more complex example of opening terminal multiple times; the same as while-loop

echo $num # it is incremented to 5
until (( $num > 10 ))
do
	echo $num
    (( num++ ))
    # gnome-terminal is available on Linux; falls not, write an existing terminal in your OS
    gnome-terminal &
	# sleep 1
done
