#!/bin/bash

# Random Quote generator

SUF=`shuf -n 1 quote.txt`

while [ $? == 0 ]
do
echo $SUF
break ;
done 
