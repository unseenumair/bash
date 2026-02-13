#!/bin/bash

path="$1"

if [ -z "$path" ] || [ ! -d "$path" ]; then
  echo "Invalid Directory"
else 
  wc -c "$path"/*
fi

<< problem
  9️⃣ Simple File Scanner
  
  Script takes directory.
  For each file inside:
  Print filename
  Print file size (use wc -c)
problem
