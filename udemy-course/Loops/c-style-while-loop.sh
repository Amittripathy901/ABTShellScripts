#!/bin/bash

# C- Style while loop

LIMIT=1

while (( $LIMIT <= 10))
do
echo $LIMIT
((LIMIT++))

done