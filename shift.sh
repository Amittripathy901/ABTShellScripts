#!/bin/bash

#To take list of argument provided on the command line and processes them one by one


echo "All arguments : $*" #Print all arguments

while [[ $# -gt 0 ]]; #Loop while there are arguments left
do
	echo "Processing: $1" #Do something with the current first argument
	shift #Remove the first argument , shifts others up
done
