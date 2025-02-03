#!/bin/bash

# Project on Regular Expression
# Project for a Valid IP address checker
#First approach to this
# Asking for user input
echo -n "[*] Enter the IP Address: "
read IP

# Regex for IP Matcher
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"

# Check if the entered IP Matches the regex pattern
if [[ $IP =~ $REGEX ]]; then
  # Extract the IP Address from the matched regex
  IP_ADDRESS=${BASH_REMATCH[0]}

  # Split the IP address into octets and check each one
  IFS="." read -r octet1 octet2 octet3 octet4 <<< "$IP_ADDRESS"

  # Ensure each octet is between 0-255
  if (( octet1 <= 255 && octet2 <= 255 && octet3 <= 255 && octet4 <= 255 )); then
    echo "Valid IP address: $IP_ADDRESS"
  else
    echo "Not a valid IP (octets must be in range 0-255)."
  fi
fi