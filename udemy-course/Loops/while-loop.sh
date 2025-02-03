#!/bin/bash

LIMIT=1

while [ $LIMIT -le 10 ]
do
echo $LIMIT 
   ((LIMIT++))

done

#Second Aproach using Seq
for i in $(seq 1 10)
do
echo $i
done