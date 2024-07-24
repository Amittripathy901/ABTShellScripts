#!/bin/bash

#while loop to read content from the file

while read myvar
do
	echo "Value from file is $myvar"
done < names.txt

