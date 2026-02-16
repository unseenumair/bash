#!/bin/bash

number="$1"

if [ -z "$number" ]; then
  exit 1
elif [ $((number % 2)) -eq 0 ]; then
  echo "$number is Even"
else
  echo "$number is Odd"
fi

#  problem
#   2️⃣ Even or Odd
  
#   Script takes one number.
#   If empty → exit 1
#   If number is even → print Even
#   Else → print Odd
# problem
