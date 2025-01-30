#!/bin/bash

#Creatig a Simple Calculator in bash

echo -n "[+]Enter the First Number: "
read FIRST_NUM    #First Variable

echo ----------------------------------------

echo -n "[+]Enter the Second Number: "
read SECOND_NUM    #Second Variable

echo ----------------------------------------

echo -e "\n Select the operation: "
echo -e "\t" "Press + for Addition"
echo -e "\t" "Press - for Substraction"
echo -e "\t" "Press * for Multiplication"
echo -e "\t" "Press  for Division"
echo ------------------------------------------


echo -n "[+]Enter what do you want to perform: "
read CAL #Third Variable

RESULT=`expr $FIRST_NUM $CAL $SECOND_NUM`

echo "------------------------------------------"

echo "The result is : " $RESULT