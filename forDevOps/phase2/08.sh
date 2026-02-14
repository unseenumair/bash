#!/bin/bash

read -p "FILE: " file
read -p "WORD: " word

if [ ! -f "$file" ] || [ -z "$word" ]; then
  echo "Invalid Input"
  exit 1
fi

result=$(grep -c "$word" "$file")
echo "Word $word occurred $result times in $file"

<< problem
  8️⃣ Word Frequency Checker
  
  Given a file + word:
  Count occurrences of that word
  Print result
problem
