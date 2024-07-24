#!/bin/bash

#Array


myArray=(1 20 30.5 Hello "Hey Buddy")

echo "All the valuesa in array are ${myArray[*]}"

#find specific values

echo "value in 3rd index is ${myArray[3]}"


#find the number of values in an array / length of the array


echo "No. of values, length of the array is ${#myArray[*]}"


myArray+=(New 30 40)

echo "values of new array are ${myArray[*]}"

