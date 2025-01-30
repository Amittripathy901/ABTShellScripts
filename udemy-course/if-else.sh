#!/bin/bash

# Mathematical Comparision in if-else statement

if [ $# -ne 2 ]
then 
echo "The Script requires atleast 2 arguments"
exit 1
fi

FISRT=$1
SECOND=$2

let RESULT=$((FISRT+SECOND))

echo The Addition of $1 and $2 is : $RESULT 