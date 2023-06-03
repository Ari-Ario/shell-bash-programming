#! /bin/bash

#select gives the files and directories numbers; then they can be selected by the those numbers

echo ------------------select a file/folder by its number---------------------

#select-method chooses all files and folders in a directory;
#here * means all in the same directory, but you can substitute it with path
select name in * #or path
do
    #first condition with -d for directory, in case the choosen number belongs to a directory
	if [ -d $name ]
	then
		echo "$name is a directory:"
        ls $name #or; cd "../$name"
        break
    #second condition, in case the choosen number belongs to a file and it is empety -s
    elif [ -s $name ]
        then
        #delet the empty file
        rm $name
        break
    #last condition with -f for file, in case the choosen number is just a file
	elif [ -f $name ]
	then
		cat $name
        #it asks if you want to proceed with deletion
		echo -e "do you want to delet $name anyway? y/n: \c"
		read yn
        #first condition of deletion with y-input delets the file forcefully
		if [ $yn == "y" ]
		then
			rm -r $name
            echo "deleted successfully"
            break
        #second condition of deletion with n-input just prints a line and breaks
		elif [ $yn == "n" ]
        then
			echo "$name not deleted"
            break
        #last condtion of deletion, in case the input is not [y/n]
        else
            echo "Not valid keyword [y/n]. Try again!"
            #it re-executes the same bash-code for second time
            "./"6-select.sh
		fi

	fi
done
