#!/bin/bash

# For Loop with two parameters in each list

# Printing distance from sun to planets

for PLANET in "Mercury 10" "Venus 20" "Earth 30" "Mars 40"
do
set -- $PLANET
echo $1 is $2,000,00 million KM away from SUN
done