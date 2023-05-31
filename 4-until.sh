#! /bin/bash

#until-loop is the revers form of while loop, therefore we write the same codee-example of while-loop in until-loop

#symple syntax
num=1
until [ $num -ge 5 ]
do
	echo $num
    #pre-encrementation diffrent from post-encrementation of while-loop example
    (( ++num ))
done
