#!/bin/bash

for fileName in $@; do
	
	if [ -f "$fileName" ]; then
		exit 0
	elif [ -d "$fileName" ]; then
		exit 1
	else
		exit 2
	fi
done
