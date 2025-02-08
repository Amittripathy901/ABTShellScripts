#!/bin/bash

# Random Password Generator



case "$1" in 
-h | --help )
  echo "USAGE: $0 [-h|--help] help [-c|--char] character"
  echo "Example: $0 -c 8"
  ;;

-c | --char )
  PASS=$(date | sha256sum | cut -c 1-"$2")
  echo "YOUR $2  PASSWORD IS: $PASS "
  ;;

* )
  echo "USAGE: $0 [-h|--help] help [-c|--char] character"
  ;;
esac
