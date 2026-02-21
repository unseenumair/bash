#!/bin/bash

# 1. Taking name input

name="$1"

if [ -z "$name" ]; then
    read -p "Enter your NAME: " name
fi

timeStamp=$(date -u);

# 2. Passing name to PYTHON & doing greeting ...
    # python code
pycode=$(cat <<'PYTHON'

import sys;
with open("greetings.log", "w") as f:
    f.write(f"Hello {sys.argv[1].strip().title()} - {sys.argv[2]}\n");
    
PYTHON
)
    # creating tempFile
tempFile=$(mktemp /tmp/tmp_script_XXXXXX.py);
echo "$pycode" > "$tempFile"

    # Running Python File
python3 "$tempFile" "$name" "$timeStamp"

    # rm tempFile
rm -f "$tempFile"

# ---

# 🧩 Problem 1 — Simple Greeting Logger 👋
#     
# **What to do:**  
# - Bash asks for your name (argument or interactive).  
# - Pass name to Python.  
# - Python prints greeting and writes `Hello <name>` with timestamp to `greetings.log`.  

