#!/bin/bash

# 1. for SMALL python scripts

name="Umair"
timestamp=$(date -u +"%Y-%m-%d %H:%M:%S")

pycode=$(cat <<'PYTHON'
import sys
name = sys.argv[1]
timestamp = sys.argv[2]
print(f"Hello {name.strip().title()} - {timestamp}")
PYTHON
)

# Create temp file
tmpfile=$(mktemp /tmp/tmp_script.XXXXXX.py) # XXXXXXX is orbitrary, mkdtemp replaces it with random string
echo "$pycode" > "$tmpfile"

# Run Python
python3 "$tmpfile" "$name" "$timestamp"

# Clean up
rm -f "$tmpfile"

# 2. For LARGER python script

# python3 file.py "$name" "$timestamp" # script.sh

# in Python
# import sys; name = sys.argv[1]; timestamps = sys.argv[2];
