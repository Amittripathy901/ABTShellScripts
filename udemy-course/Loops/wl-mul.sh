#!/bin/bash

#While loop with Multiple Conditions

VAR1=unset
PREVIOUS=$VAR1

while echo "Previous-variable=$PREVIOUS"
  echo
  PREVIOUS=$VAR1
  [ "$VAR1" != end ]
  do
  echo -n "[+] Input Variable: "
  read VAR1
  echo "Variable #1=$VAR1"

  done

  exit 0