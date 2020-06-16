#!/bin/bash

cat /etc/shadow

if [ "$?" -e "0" ]; then
	echo "Command succeeded"
	exit 0
else
	echo "Commmand failed"
	exit 1
fi
