#!/bin/bash


echo "Provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice

case $choice in
	a)echo "Today's date is:"
		date;;
	b)ls;;
	c)pwd;;
	*) echo "Invalid Option"


esac 
