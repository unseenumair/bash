#!/bin/bash

name="Guest"

if [ "$1" = "--help" ]; then
  echo -e "Pass your name as a first argument without a space. \n Example: \n./script.sh UmairShakoor"
  exit 0
elif [ -n "$1" ]; then
  name="$1"
fi

echo "Hello, $name 🙂"

# 0.1 — Smart Greeter Tool
# Build a CLI tool:
# 
# ./greet.sh Umair
# 
# Output personalized greeting.
# 
# If no name → use "Guest"  
# If '--help' → show usage  
# 
# 👉 Introduces: defaults, basic flags mindset
