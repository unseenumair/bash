#!/usr/bin/env bash

# Validating logFile
while true; do
    path="$1"

    if [ -z "$path" ]; then
        read -p "Enter LOG file Path: " path
    fi

    # validating path
    if [ ! -f "$path" ] || [ ! -r "$path" ] || [ ! -s "$path" ]; then
        echo "Invalid Path"
       shift &&  continue
    else
        break
    fi
done

cleanedPath="cleaned_$path"

# Passing contents to python
python3 script.py "$path" "$cleanedPath"

# rotating logFile according to lines
maxLines=1000
fileLines=$(wc -l < "$cleanedPath")

if [ "$fileLines" -gt "$maxLines" ]; then
    mv "$cleanedPath" "$cleanedPath.$(date -u +'%Y-%M-%d_%H-%M-%S')"
fi


# 1️⃣ Problem 1 — Log Validator & Cleaner 🧹
# 
# **What to do:**  
# - Bash takes a log file path (argument or interactive).  
# - Validate: file exists, readable, non-empty.  
# - Pass contents to Python.  
# - Python filters out malformed log lines (e.g., missing timestamps or fields) and outputs a **cleaned log file**.  
# - Bash then rotates old logs (archive with timestamp).  

# Example logFile

# 2026-02-23 09:15:12 INFO  AuthService  User login successful: user_id=4821
# 2026-02-23 09:15:45 WARN  AuthService  Failed login attempt: user_id=9931
# 2026-02-23 09:16:02 ERROR PaymentSvc   Transaction failed: txn_id=TX88921
# 
# INFO Missing timestamp but looks valid
# 2026-02-23 09:17:10 INFO  InventorySvc Stock updated: item_id=77 qty=120
# 
# 2026-02-23 09:18:01 ERROR DatabaseSvc Connection timeout after 30s
# Random garbage line not a log entry
# 2026-02-23 09:18:55 WARN  CacheSvc     Cache miss for key=session_9921
# 
# 2026-02-23 09:19:33 INFO  AuthService  User logout: user_id=4821
# 2026/02/23 09:19:59 INFO  WrongFormat  Wrong date separator
# 
# 2026-02-23 09:20:10 ERROR PaymentSvc   Invalid card number provided
# 2026-02-23 09:20:45 INFO  Scheduler    Daily job completed successfully
# 
# ERROR No timestamp again
# 2026-02-23 09:21:30 WARN  NetworkSvc   Packet loss detected: 12%
# 
# 2026-02-23 09:22:05 INFO  AuthService  Password changed: user_id=7712
# Incomplete line starts here but never finishes
