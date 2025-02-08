#!/bin/bash

#1.Check for Root user
if [ $UID != 0 ];
then
echo "Not Root user, Access Denied!"
exit 1
fi
#2.Cheking internet connection
ping -c 1 google.com &> /dev/null
if [ $? != 0 ]
then
echo "You don't have an active internet connection."
exit 2
fi
#3.Installing Packages
for i in php nginx
 do
 $i --version &> /dev/null
 if [ $? -ne 0 ]
 then
     echo [-]Installing $i 
     apt-get install $i -y &> /dev/null
     echo [+]$i installed
 
     #for loop
      if [ $? -ne 0 ]
     then
     echo "Install $i manually or re-run the script...."
     fi
else
echo "$i is Installed!"

fi
done
