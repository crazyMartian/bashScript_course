#!/bin/bash

for fileName in $@; do
	
	if [ -f "$fileName" ]; then
		echo "The file $fileName is a regular file"
		echo $( cat $fileName )
	elif [ -d "$fileName" ]; then
		echo "The file $fileName is a directory"
		echo $( ls -l $fileName )
	else
		echo "The file $fileName does not exist"
	fi
done
