#!/bin/bash

path="$1"

if [ -z "$path" ]; then
  echo "Argument is Missing..."
  exit 1
elif [ -f "$path" ]; then
  echo "$path is a FILE"
elif [ -d "$path" ]; then
  echo "$path is a DIRECTORY"
else 
  echo "neither file nor directory"
fi

<< problem
  7️⃣ Directory Checker
  
  Script takes path.
  If not exist → exit 1
  If directory → print Directory
  If file → print File
problem
