#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  exit 1
elif [ "$1" -gt "$2" ]; then
  echo "$1 is Greater"
elif [ "$1" -lt "$2" ]; then
  echo "$2 is Greater"
elif [ "$1" -eq "$2" ]; then
  echo "$1 & $2 are EQUAL"
else
  echo "Invalid Number"
fi

<< problem
  3️⃣ Bigger Number
  
  Script takes 2 numbers.
  If either missing → exit 1
  Print which one is greater
  If equal → print Equal
problem
