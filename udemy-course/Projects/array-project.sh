#!/bin/bash

# Project on Arrays

NAME=(PETER JOHN RICK HARRY GINNEY)
NUMBER=(4563654 4525365 1253654 3256365 2365259)

for i in {0..5}
do
echo ${NAME[i]} ${NUMBER[i]}
done