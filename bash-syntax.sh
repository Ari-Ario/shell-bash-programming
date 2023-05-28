#! /bin/bash
#first (above) line is obligatory, that refers to shell directory /bin/bash

#printing a simple text:
echo "text for test"
#execute file just by writing ./filename. But the file must have execution mod:; write in terminal: chmod +x filename, then ./filename

#reading an input from user:
echo "enter text, signs or numbers:"
read input
echo "your input is: $input"
#reading user-input on the same line:
echo -e "enter sth: \c"
read sth
echo "you input is: $sth"
