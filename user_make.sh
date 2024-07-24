#!/bin/bash

#Script should be execute with sudo/root access

if [[ "${UID}" -ne 0 ]]
then
        echo "Please run with sudo or root."
        exit 1
fi

#User should provide atleast one argument as username else guide him

if [[ "${#}" -lt 1 ]]
then
        echo "Usage:${0} USER_NAME [COMMENT]...."
        echo "Create a user with name USER_NAME and comments filed of COMMENT"
        exit 1
fi


#Store 1st argument as username

USER_NAME="${1}"
echo $USER_NAME

#In case of more than one argument, store it as account comments
shift
COMMENT="${@}"

#Create password
PASSWORD=$(date +%s%N)

#Create the user
useradd -c "${COMMENT}" -m $USER_NAME

#Check if the user is created or not

if [[ $? -ne 0 ]]
then
	echo "The user could not be added"
	exit 1
fi

#Set the password for the user

echo "$USER_NAME:$PASSWORD" | chpasswd -e

#Check if password successfully set or not

if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

#Force password change on first login

#passwd -e $USER_NAME
chage -M 1 $USER_NAME

#Display the username,password and the host where the user created

echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "$(hostname)"
