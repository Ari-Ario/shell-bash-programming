#! /bin/bash

#select gives the files and directories numbers; then they can be selected by the those numbers

echo ------------------select a file/folder by its number---------------------

select name in *
do
	if [ -d $name ]
	then
		echo "$name is a directory:"
        ls $name #or; cd "../$name"
        break
    elif [ -s $name ]
        then
        rm $name
	elif [ -f $name ]
	then
		cat $name
		echo -e "do you want to delet $name anyway? y/n: \c"
		read yn
		if [ $yn == "y" ]
		then
			rm -r $name
            echo "deleted successfully"
            break
		elif [ $yn == "n" ]
        then
			echo "$name not deleted"
            break
        else
            echo "Not valid keyword [y/n]. Try again!"
            "./"6-select.sh
		fi

	fi
done
