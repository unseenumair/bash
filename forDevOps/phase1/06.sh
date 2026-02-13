#!/bin/bash

while true; do
  read -p "Enter a WORD: " word
  if [ -z "$word" ]; then
    echo "Invalid Input"
    continue
  elif [ "$word" = "stop" ]; then
    exit 1
  fi
done

<< problem
  6️⃣ Word Echo Loop
  
  Script keeps asking user:
  Enter word:
  If user types:
  stop → exit
  Empty input → print warning
  Otherwise → echo it back
problem
