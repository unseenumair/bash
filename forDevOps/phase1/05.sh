#!/bin/bash

file="$1"
count=0

if [ -z "$file" ]; then
  exit 1
elif [ -f "$file" ]; then
  while read line; do
    if [ -z "$line" ]; then
      count=$((count+1))
    fi
  done < "$file"
  echo "Empty Lines in $file are $count" 
fi

#  problem
#   5️⃣ Empty Line Counter
  
#   Given a file:
#   Count only empty lines
#   Print total
# problem
