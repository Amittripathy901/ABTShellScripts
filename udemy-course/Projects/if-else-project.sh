#!/bin/bash

# Project for checking a swebsite is valid or not

echo -n "[*] Enter the Domain Name: "
read DOMAIN

ping -c 1 $DOMAIN &> /dev/null  #-c 1 means sending only one packet to domain address & /dev/null to redirect output of ping to dev/null folder to avoid terminal garbage

if [ $? == 0 ]
then
echo "$DOMAIN is availble and accessible!"
else
echo "$DOMAIN is not avaiable! Invalid Domain Name"

fi