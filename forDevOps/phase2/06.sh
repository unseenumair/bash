#!/bin/bash

read -p "DIRECTORY: " directory
read -p "Max SIZE (in KiB): " maxSize

if [ ! -d "$directory" ] || [ -z "$maxSize" ]; then
  echo "Invalid Input"
  exit 1
fi

result=$(find "$directory" -size +"$maxSize"k)

if [ -n "$result" ]; then
  echo "$result"
else
  echo "No File is more than $maxSize KiB in $directory"
fi

# problem
#   6️⃣ Large File Detector
  
#   Script takes directory + size (in KB).
#   Print files larger than given size
#   If none → print “No large files”
# problem
