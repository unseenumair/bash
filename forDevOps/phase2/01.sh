#!/bin/bash

dir="$1"

if [ ! -d "$dir" ]; then
  exit 1
else
  du -ah "$dir" | sort -h | head -n 5
fi

<< problem
  1️⃣ Disk Usage Reporter
  
  Script takes a directory.
  If invalid → exit 1
  Print total size using du
  Print top 5 largest files inside (sorted)
problem
