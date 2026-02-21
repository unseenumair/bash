#!/bin/bash

# Taking & Validating path of Log File
while true; do
    path="$1"

    if [ -z "$path" ]; then
        read -p "Enter path of LOG File: " path
    fi

    if [ ! -f "$path" ]; then
        echo "Invalid Path: $path"
        shift && continue
    else
        logFile="$path"
        break
    fi
done

# Take Keyword and read logFile
keyword="$2"
if [ -z "$keyword" ]; then
    read -p "Enter a KEYWORD: " keyword
fi

contents=$(cat "$logFile")

# Passing contents + keyword to Python
python3 main.py "$contents" "$keyword"

# 🧩 Problem 3 — Keyword Finder 🔍
# 
# **What to do:**  
# - Bash reads a log file + keyword.  
# - Pass contents + keyword to Python.  
# - Python counts occurrences of the keyword and prints a small report.

# Command to do it , instead of passing it to python : 
# grep -ic "$keyword" "$contents"
