#!/bin/bash

file="$1"
count=0

if [ -f "$file" ]; then
  attempts=$(grep -ic "failed" "$file")
  if [ -n "$attempts" ]; then
    count="$attempts"
  fi
  if [ "$count" -gt 5 ]; then
    echo "ALERT"
  fi
else
  exit 1 
fi

<< problem
  3️⃣ Failed Login Monitor
  
  Using /var/log/auth.log (or a sample log file):
  Count failed login attempts
  If > 5 → print “ALERT”
problem
