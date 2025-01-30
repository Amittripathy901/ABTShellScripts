#!/bin/bash

#if-else-ladder program using if-elif-else

echo -n "[+]  Enter a Number: "
read NUM

if [ $NUM == 100 ]
then
echo "You've Entered 100"


elif [ $NUM -lt 100 ]
then

echo "The number is less than 100!"

elif [ $NUM -gt 100 ]
then 

echo "The number is greater than 100!"

elif [[ "$NUM" =~ [A-Za-z] ]]
then
echo "You have entered a character!"

else
echo "You have entered a Symbol!"

fi


