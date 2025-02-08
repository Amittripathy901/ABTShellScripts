#!/bin/bash

case `whoami` in
"root" )
 echo "You are root..."
 ;;

 "ubuntu" )
 echo "You are ubuntu..."
 ;;

 "Amit" )
 echo "You are Amit..."
 ;;

 * )
 echo "You are someone else"
 ;;
 
esac