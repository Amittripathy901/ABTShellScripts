#!/bin/bash

# Reading line from a file

NUM=1
 

while read line
do
echo $NUM.$line
((NUM++))
done < names.txt