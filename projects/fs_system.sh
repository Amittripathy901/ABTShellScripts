#!/bin/bash

#monitoring the free fs space disk

FU=$(df -h | grep "xvda16" | awk '{print $5}' | tr -d % )

TO=amit.pravuji@gmail.com

if [[ $FU -ge 10 ]]
then
	echo "Warning, disk space is low - $FU %" | mail -s "Disk Space Alert!" $TO 
else
	echo "All good"
fi

