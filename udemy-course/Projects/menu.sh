#!/bin/bash

#Creating menu using select

select LANG in "Bash" "Python" "HTML" "GO" "Java" "CSS" "AWK" "Dart" "Flutter"
do
echo "Your Favourite Programmig Language is $LANG"
break
done
