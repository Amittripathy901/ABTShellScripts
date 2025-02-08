#!/bin/bash

while [ $# -gt 0 ];
do
      case "$1" in 
       -h|--help )
       echo "Usage: $0 [Options...]"
       echo -e "\t" "-c , --cpuinfo:"
       echo -e "\t" "\t" "\t" "Get CPU Information"

       echo -e "\t" "-k , --kernel-info "
       echo -e "\t" "\t" "\t" "Get KERNEL Information"

       echo -e "\t" "-s , --system-info "
       echo -e "\t" "\t" "\t" "Get SYSTEM Information"

       echo -e "\t" "-fm , --freee-mem-info "
       echo -e "\t" "\t" "\t" "Get Free Memory Space Information"
       
       echo -e "\t" "-ip , --ip-address "
       echo -e "\t" "\t" "\t" "Get IP Address"
      
       echo "Created by Amit Tripathy"
       exit 1
        ;;

       -c | --cpuinfo ) 
       CPU=$(cat /proc/cpuinfo | grep "model name" )  # Store CPU info in a variable
       echo CPU INFO: $CPU
       echo 
       shift
       ;;

       -k | --kernel-info ) 
       echo KERNEL VERSION:`uname -r`
       echo 
       shift
       ;;
       
       -s | --sysinfo )
       SYSINFO=$(cat /etc/os-release | grep "PRETTY")
       echo SYSTEM VERSION:$SYSINFO
       echo
       shift
       ;;

       -f | --freem )
       MEMORY=$(free -m | grep "Mem" | awk '{print $4}')
       echo Free Disk Space:$MEMORY Mb
       echo
       shift
       ;;

       -ip | --ip-address )
       echo "IP ADDRESS: `hostname -i`"
       echo 
       shift
       ;;

       esac
done