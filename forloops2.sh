#!/bin/bash

#Getting values from a file names.txt


FILE="/home/ubuntu/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done
