#!/bin/bash

if [ -z "$1" ]; then
  exit 1
fi

max=0
for number in "$@"; do
  if [ "$number" -gt "$max" ]; then
    max="$number"
  fi
done
echo "Largest Number is $max"

#  problem
#   🔟 Largest Number (Unlimited args)
  
#   Same as before but simpler:
#   Print largest number
#   No regex
#   No advanced tools
# problem
