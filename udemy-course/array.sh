#!/bin/bash

#Associative Array

declare -A NAME

NAME=([PETER]=1000 [JOHN]=1100 [HARRY]=1200)


echo "Before unset: ${NAME[@]}"

unset NAME 


echo "After unset: ${NAME[@]}"
