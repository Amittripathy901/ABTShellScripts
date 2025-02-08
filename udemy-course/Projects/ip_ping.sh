#!/bin/bash

#Project on While Loop - IP Checker

FILE=$1

cat $FILE |

#while loop

while read line
do
 ping -c 1 $line &>/dev/null

 #If-else condition

 if [ $? -eq 0 ]
 then

 echo $line is Up
 else
 echo $line is Down
 fi

 done
