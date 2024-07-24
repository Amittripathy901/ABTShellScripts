#!/bin/bash


#String Operations

myVar="Hey Buddy how are you?"

myVarLength=${#myVar}
echo "length is $myVarLength"

echo "Upper case is ${myVar^^}"
echo "Lower case is ${myVar,,}"

#to replace a string


newVar=${myVar/Buddy/Amit}
echo "New Var is ------ $newVar"

#To slice a string

echo "After slicing ---------- ${myVar:4:5}"
