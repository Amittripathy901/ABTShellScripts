#!/bin/bash


#Second Approach for IP address Validation

# Asking for user input
echo -n "[*] Enter the IP Address: "
read IP


#Regex of IP Matcher
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"

if ! [[ $IP =~ $REGEX ]]
then
echo "Not a valid IP address "
exit 1

fi

IP_ADDRESS=${BASH_REMATCH[0]}

echo $IP

ping -c 1 $IP_ADDRESS &> /dev/null
echo ==========================================
echo Your IP:$IP_ADDRESS
echo ==========================================


if [ $? -eq 0 ]
then
echo "IP is accessible"
else
echo "IP is inaccesiible"
fi