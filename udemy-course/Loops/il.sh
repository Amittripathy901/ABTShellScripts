#!/bin/bash

#Infinite Loop

VAR=1

while true #(: instead of true)
do
echo $VAR
((VAR++))
done