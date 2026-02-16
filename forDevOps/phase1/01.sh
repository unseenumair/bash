#!/bin/bash

file="$1"

if [ -z "$file" ]; then
  echo "File Name not given ..."
  exit 1
elif [ -f "$file" ]; then
  echo "$file exists"
else 
  echo "$file dosen't exists"
fi

#  problem
# 1️⃣ File Existence Checker

# Script takes one argument.
# If empty → print usage + exit 1
# If file exists → print File exists
# Else → print File not found

# problem
