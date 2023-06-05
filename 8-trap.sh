#! /bin/bash

# trap command is used to catch and respond to signals or events in a script
# there are several ways to use trap command

# General syntax given from terminal: trap command signals

# processing code to be traped from another terminal
echo "pid of current processing code is: $$"

# for example trap SIGINT everytime by: ctrl+c
trap "echo "Exit caought"" SIGINT

for (( i=0; i<=10; i++ ))
do
    echo $i
    # numbers will be printed every 2 seconds to be able to trap script
    sleep 2
done

exit 0 # 0 is success value

# now you run this code in a terminal by command: ./8-tarp.sh
# then open another terminal and write: kill -9 pid
# most common ones: ctrl+c for iterupting or SIGINT, ctrl+z for stopping or suspending 

# for a list of all signals and their values in terminal: man 7 signal