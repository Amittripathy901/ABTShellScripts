#!/bin/bash

#Creating a script that takes input as a file

while [ $# -gt 0 ]
do
case "$1" in 
"-h" | "--help" )
echo "Usage: [-h|--help] [-f|--file] file"
exit 1
;;

"-f" | "--file" )
FILE=$2
LINE=`cat $FILE | wc -l`
WORD=`cat $FILE | wc -w`
LETTER=`cat $FILE | wc -m`
clear
echo -------------------------------
echo          FILE:$FILE
echo -------------------------------
echo No. of Lines:$LINE
echo No. of Worlds:$WORD
echo No. of Letters:$LETTER
echo --------------------------------
exit 1
;;

* )
echo Usage: "[-h|--help] [-f|--file] file"
;;
esac


done