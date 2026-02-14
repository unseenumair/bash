#!/bin/bash

files=0
directories=0

path="$1"
if [ ! -d "$path" ]; then
  echo "$path is NOT a directory"
  exit 1
fi

for item in "$path"/* ; do
  if [ -f "$item" ]; then
    files=$((files+1))
  elif [ -d "$item" ]; then
    directories=$((directories+1))
  fi
done

echo -e "$path has $files FILES & $directories DIRECTORIES"

<< problem
  5️⃣ Directory File Summary
  
  Given a directory:
  Count total files
  Count total directories
  Print both numbers
problem
