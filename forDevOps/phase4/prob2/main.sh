#!/bin/bash

# Takes Dir & Validate Path
while true; do
    path="$1"

    if [ -z "$path" ]; then
        read -p "Enter DIRECTORY path: " path
    fi    

    if [ ! -d "$path" ]; then
        echo "INVALID directory path"
        shift && continue
    else
        break
    fi
done

# Getting Files & Dirs
files=$(find "$path" -type f)
directories=$(find "$path" -type d)

# Passing files & dirs to Python
python3 main.py "$files" "$directories"

# 🧩 Problem 2 — Directory File Count 📁
# 
# **What to do:**  
# - Bash takes a directory path.  
# - Bash passes file list to Python.  
# - Python counts files , directories and prints:
# - Files: X, Directories: Y

# There is a super lazy way to get list of Files & Dirs instead of manual counting with Python which is use of these 2 commands :
# find "$path" -type f | wc -l
# find "$path" -type d | wc -l
