#!/bin/bash

# Nested Loop

# Enter a number and it will create a Multiplication table for the number
TABLE=1

echo -n "[*] Enter the number for Multiplication table: "
read NUM

# Check if NUM is a valid number
if [[ $NUM =~ ^[0-9]+$ ]]; then
  while [ $TABLE -le 10 ]; do
    echo "$NUM * $TABLE = $(($NUM * $TABLE))"
    ((TABLE++))
  dones
else
  echo "You have entered a non-digit character. Entered: $NUM"
fi
