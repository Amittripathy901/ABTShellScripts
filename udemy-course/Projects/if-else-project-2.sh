#!/bin/bash

#Project for checking Read , write and execute permissions

echo -n "[*] Enter the file name: "
read FILE

READ="NO"
WRITE="NO"
EXECUTE="NO"

# Checking for read permission
if [ -r "$FILE" ]; then 
  READ="YES"
fi

# Checking for write permission
if [ -w "$FILE" ]; then
  WRITE="YES"
fi

# Checking for execute permission
if [ -x "$FILE" ]; then
  EXECUTE="YES"
fi

clear

echo =============================
echo Checking for file permissions
echo =============================
sleep 2s
echo "FILE:$FILE"

echo READABLE:$READ
echo WRITABLE:$WRITE
echo EXECUTABLE:$EXECUTE
echo 
sleep 2s
echo ==============================EXIT==========================