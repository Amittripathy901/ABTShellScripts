#!/bin/bash

function usage {
    echo "Usage: $0 [-h|--help] [-f file] [--file file]"
    exit 1
}

while [ $# -gt 0 ];
do
 case "$1" in 
  -h|--help )
      usage
   ;;

   -p|--path )
    if [ -z "$2" ]; then  # Check if path is provided
                echo "Error: Missing path argument"
                usage
            fi

            if [ ! -d "$2" ]; then  # Check if path exists
                echo "Error: Directory '$2' does not exist."
                exit 1
            fi
    cd $2 ; ls -l |
    while read line 
    do
         TIME=$(echo $line | awk '{print $8}')
         FILE=$(echo $line | awk '{print $9}')

         echo File :$FILE was created on: $TIME

         done
         exit 1
         ;;
    * )
         usage
        ;;
    esac
done