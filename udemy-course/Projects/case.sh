#!/bin/bash

# Creating a simple menu using case

clear
echo ==================================================
echo Enter the name of person you want to get details..
echo ==================================================
echo 1.Peter
echo 2.Vivek
echo 3.Harry
echo ===================================================
echo -n "Enter here: "
read NAME
echo ====================================================
#case statements

case "$NAME" in
 "Peter" | "peter" )
  echo Name: Peter Mohanty
  echo Phone: 9348562102
  echo Email_ID: petermohanty@gmail.com
  echo Dept: Department of Gobar Chasa
  echo Address: Sardar Basti, Gulpur 
  echo --------------------------------------------------------
  ;;

 "Vivek" | "vivek" )
  echo Name: Vivek Austin Behera
  echo Phone: 9348564530
  echo Email_ID: randompilavivek@gmail.com
  echo Dept: Department of Ghoda Dimba
  echo Address: Jhantapur, Janghabalapur
  echo --------------------------------------------------------
  ;;

 "Harry" | "harry" )
  echo Name: Harry Kumar Kandi
  echo Phone: 93485621785
  echo Email_ID: naughtyharrykandi@gmail.com
  echo Dept: Department of Anda Khola
  echo Address: Nunia Sahi , Brunjharpur 
  echo --------------------------------------------------------
  ;;

  esac


  