#!/bin/bash

file="$1"

if [ -z "$file" ]; then
  echo -e "MISSING: File Argument ? \n Pass File Name as a first Argument. \n Example: \n./view.sh file.txt"
  exit 1
# Checking if File can be Read
elif [ ! -r "$file" ]; then
  echo "ERROR: $file is not readable"
  exit 1
# If any error while cat $file ?
elif [ ! cat "$file" >/dev/null 2>&1 ]; then
  echo "ERROR: unkown"
  exit 1
# File is EMPTY ?
elif [ $(wc -c < "$file")  -eq 0 ]; then
  echo "WARN: File is EMPTY"
  exit 1
# If all SET
else
  while read line; do
    echo "$line"
  done < "$file"
  exit 0
fi

# 0.2 — Safe File Viewer
# Tool:
# 
# ./view.sh file.txt
# 
# Requirements:
# 
# - If missing → usage
# - If not readable → error
# - If empty → warn
# - Else → print content
# 
# 👉 Introduces: permission checks, defensive scripting
