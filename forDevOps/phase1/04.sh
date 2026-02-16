#!/bin/bash

file="$1"
count=0

if [ -z "$file" ] || [ ! -f "$file" ]; then
  exit 1
else
  while read line; do
    count=$((count+1))
  done < "$file"
  echo "Total Lines in $file are $count"
fi  

# problem
#   4️⃣ Line Counter
  
#   Script takes filename.
#   If not exist → exit 1
#   Count total lines using while read
#   Print count
# problem
