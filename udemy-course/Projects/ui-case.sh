#!/bin/bash

# Recheking user input

echo -n "Enter your full name:"
read NAME
echo -n "Enter your department: "
read DEPT
echo -n "Enter your age: "
read AGE
echo ==============================================

echo -n "Do you have entered correct information[Y|N]:"
read ANS
echo ==============================================
case "$ANS" in 
"Y" | "y" )
echo $NAME >> empl.txt
echo $DEPT >> empl.txt
echo $AGE >> empl.txt
echo ----------------------
;;

"N" | "n" )
echo "Nothing is saved in file"
;;

* )
echo "Something wrong"
;;

esac