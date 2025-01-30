#!/bin/bash

first="Hello"
second="World!"
greeting="$first, $second"

echo $greeting


echo "The Length of the String [greeting] is: " ${#greeting}

if [ "$first" == "$second" ];  then
echo " Strings are equal "
else 
echo "not equal"

fi


echo ${greeting:7:5} 
echo ${greeting: -6}


#String Manipulation

#1.Substitution
str="Hello World!"
new_str=${str/World/Universe}
echo "New string is : " $new_str

str="apple,apple,apple"
new_str=${str//apple/orange}
echo $new_str

#!/bin/bash

str="Bash Scripting Tutorial"

# Start at index 5 and take 6 characters
substring1=${str:5:6}
echo $substring1  # Output: Scrip

# Start from the end and take 5 characters
substring2=${str: -5}
echo $substring2  # Output: rial

# From index 0, take the first 4 characters
substring3=${str::4}
echo $substring3  # Output: Bash

#Eliminate 5 characters from end and print the rest
substring4=${str::-5}
echo $substring4 