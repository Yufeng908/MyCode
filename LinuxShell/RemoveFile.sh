#!/bin/sh 

mvfile(){
	if [ -f $1 ]
	then
		echo 'this is file'
	else
		for element in `ls $1`
		do
			dir_or_file=$1'/'$element
			if [ -d $dir_or_file ]
			then
				mvfile $dir_or_file
			else
				#mv $dir_or_file $2
				echo $dir_or_file
			fi
		done
	fi
}

root_dir_file='/root/aaa'
mvfile $root_dir_file