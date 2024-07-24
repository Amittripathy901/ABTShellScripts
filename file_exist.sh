#!/bin/bash

#To check whether the file exist or not

FILEPATH="/home/ubuntu/test.csv"

if [[ -f $FILEPATH ]]
then
	echo "File Exist"
else
	echo "File doesn's exist"
	exit 1
fi
