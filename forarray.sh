#!/bin/bash

myArray=(1 2 3 4 5.0 Hello Amit)

length=${#myArray[*]}
for (( i=0;i<$length;i++ ))
do
	echo "Value of array is ${myArray[$i]}"
done
