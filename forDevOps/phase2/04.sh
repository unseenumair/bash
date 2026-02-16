#!/bin/bash

process="$1"

if [ -n "$process" ]; then
  running=$(pgrep -c "$process")
  if [ "$running" -eq "1" ]; then
    echo "$process is RUNNING"
  else
    echo "$process is NOT running"
  fi
else
  exit 1
fi

# problem
#   4️⃣ Process Checker
  
#   Script takes process name as argument.
#   If running → print “Process active”
#   Else → print “Process not running”
# problem
