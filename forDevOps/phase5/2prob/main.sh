#!/usr/bin/env bash
set -e

# taking dir
path="$1"

if [ -z "$path" ]; then
    read -p "Enter DIR path Containing Multi LOG Files: " path
fi

# validating dir
if [ ! -d "$path" ]; then
    echo "DIR not exists"
    exit 1
fi

# storing valid logFiles
logFiles=()

for file in $(find "$path" -type f -name "*.log"); do
    if [ -r "$file" ] && [ -s "$file" ]; then # if ReadAble & nonEmpty
        logFiles+=("$file") # add file into logFiles
    fi
done

totalFiles="${#logFiles[@]}"

# passing contents to python and taking errorFiles from python
mapfile -t errorFiles < <(python3 script.py "$path" "${logFiles[@]}")

# creating a master error report
file="errorsReport.txt" # where to store
echo -e "\nMaster Errors Report of Log Files at $path : \n" >> "$file"
for result in "${errorFiles[@]}"; do
    echo " $result" >> "$file" # space before $result is just for formatting
done
echo "" >> "$file" # just for formatting purpose

# 2️⃣ Problem 2 — Multi-Source Log Aggregator 📊
# 
# **What to do:**  
# - Bash takes a directory containing multiple log files.  
# - For each file:  
#   - Validate readability  
#   - Pass contents to Python  
#   - Python extracts error-level lines only  
# - Python returns a summary per file (`filename: n_errors`)  
# - Bash aggregates and prints a **master error report** sorted by highest errors.  
