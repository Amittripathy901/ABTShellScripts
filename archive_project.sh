#!/bin/bash

#Author- Amit Tripathy

#Date - 19.07.2024

#Project-In the given directory if you find files size more than 200kb,compress it and move to archive folder

#Variables
BASE=/home/ubuntu
DEPTH=1
RUN=0

#Check if the directory is present or not

if [ ! -d $BASE ]
then
	echo "Directory does not exist: $BASE"
	exit 1
fi

#Create "archive" folder if not present
if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#Find the list of files larger than 200kb
for i in $(find "$BASE" -maxdepth $DEPTH -type f -size +200k);
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y -%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1  #Compress the file
		mv $i.gz $BASE/archive || exit 1 #Move the compressed file
	fi 
done
