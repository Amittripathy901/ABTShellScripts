#!/bin/bash

#project - to monitor free ram space


FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=400

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "Warning, RAM is running low"
else
	echo "RAM space is sufficient - $FREE_SPACE M"
fi
