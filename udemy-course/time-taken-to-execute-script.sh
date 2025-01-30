#!/bin/bash

# Project on Command Substitution

# Calculate the time to execute a script

# Starting Time
START=$(date +%s)
pwd
sleep 2

# Ending Time
END=$(date +%s)

# Time taken to execute the script
TIME_TAKEN=$((END - START))

echo "Time taken to execute the script: $TIME_TAKEN seconds"

