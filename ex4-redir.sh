#!/bin/bash

# I/O redirection if a file can be installed

function checking () {
    if [ -z "$1" ]
    then
        echo "$1 is empty."
    else
        # curly Brackets {} for input redirection
        {
            read line1
        } < $1
        echo "first line of the file:"
        echo $line1
    fi
}

function installation () {
    success=0
    e_noargs=65
    # curly Brackets {} for output redirection
    {
        echo "Archive Description:"
        rmp -qpi $1
        echo
        echo "Archive Listing:"
        rmp -qpl $1
        echo
        rmp -i --test $1
        if [ "$?" -eq $success ]
        then
            echo "$1 can be installed."
        else
            echo "$1 cannot be installed!"
        fi
        echo
    } > "$1.test"
    echo "rmp-result in file $1.test"
}

# This line passes the argument to checking, if it is empty or not
checking $1

# This condition passes the arg to installation, if the file is executable
if [ -x "$1" ]
then 
    installation $1
else
    echo "$1 has not executable mod."
fi

exit 0