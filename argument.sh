#!/bin/bash

#Argument passing in scripts or to access the arguments

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are - $@"
echo "Number of arguments are - $#"

#for loop to access thr values from arguments

for filename in $@
do
	echo "Copying file - $filename"
done

