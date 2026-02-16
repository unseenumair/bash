#!/bin/bash

file="$1"
count=0

if [ -f "$file" ]; then
  count=$(grep -ic "error" "$file")
  if [ "$count" -eq 0 ]; then
    echo "no Error msg Found in $file. System is Clean"
  else
    echo -e "There are $count ERRORs in $file :\n"
    grep -i "error" "$file"
  fi
else
  exit 1
fi

# problem
#   2️⃣ Log Error Counter
  
#   Given a log file:
#   Count how many lines contain the word error
#   Print total
#   If zero → print “System clean”
# problem
