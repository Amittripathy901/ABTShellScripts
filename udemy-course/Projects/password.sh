#!/bin/bash

#Project : Prompt a user password until he enters a correct password

CORRECT_PASSWORD="123abcd"  #correct password



while true ; do
echo -n "Enter Password: "
read  USER_ENTERED_PASSWORD #read entered password

#check if the password entered by user is correct or not
if [ "$USER_ENTERED_PASSWORD" == "$CORRECT_PASSWORD" ]; then
echo -e "\nPassword is Correct! Congrats! "
echo -e   "Welcome :)" `whoami` 
break ;
else
echo -e "\nWrong Password, Gaand Marao:"

fi

done

