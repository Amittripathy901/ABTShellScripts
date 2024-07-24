#!/bin/bash


#how to store key_value pairs

declare -A myArray
myArray=([name]=Amit [age]=21 [city]=Kendrapara)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"




