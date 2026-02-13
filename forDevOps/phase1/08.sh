#!/bin/bash

sum=0

if [ -z "$1" ]; then 
  exit 1
else
  for number in "$@"; do
    sum=$((sum+number))
  done
  echo "SUM: $sum"
fi

<< problem
  8️⃣ Multi-Argument Sum
  
  Script:
  ./sum.sh 5 3 10
  Output:
  Total: 18
  If no args → exit 1.
problem
