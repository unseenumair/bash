# 🚀 Phase 3 — DevOps-Grade Bash (Operator Track)
## From “Script Writer” → “Linux Operator” ⚙️

> Goal: Build **real operational tools**, not academic scripts  
> Method: Problem-driven learning → introduce commands ONLY when needed  
> Outcome: You can automate servers blindfolded 😎

---

# 🧭 Stage 0 — CLI Tool Mindset (Foundation of Real Scripts)

## 🎯 Skills Introduced
- Proper argument handling
- Default values
- Usage messages
- Exit codes (discipline)
- Safe input patterns

## 🧩 Problems

### 0.1 — Smart Greeter Tool
Build a CLI tool:

./greet.sh Umair

Output personalized greeting.

If no name → use "Guest"  
If `--help` → show usage  

👉 Introduces: defaults, basic flags mindset

---

### 0.2 — Safe File Viewer
Tool:

./view.sh file.txt

Requirements:

- If missing → usage
- If not readable → error
- If empty → warn
- Else → print content

👉 Introduces: permission checks, defensive scripting

---

### 0.3 — Multi-Mode Input Tool
Tool should accept:

- Argument input OR
- Interactive input if missing

Example:

./say.sh Hello

or

./say.sh Enter message:

👉 Introduces: dual input mode (real CLI behavior)

---

# 🧭 Stage 1 — Filesystem Operator Skills 🗂️

## 🎯 Skills Introduced
- Directory traversal
- File classification
- Size analysis
- Safe globbing
- Hidden file handling

## 🧩 Problems

### 1.1 — Directory Inspector
Given a directory:

Print:

- Total files
- Total directories
- Largest file name
- Largest file size

👉 Introduces: `du`, sorting outputs

---

### 1.2 — Empty Directory Cleaner (Dry-Run)
Scan directory and print empty subdirectories.

⚠️ DO NOT delete yet — preview only.

👉 Introduces: recursive scanning mindset

---

### 1.3 — Disk Usage Alarm
Given threshold (MB):

./disk-alert.sh /var 500

If usage exceeds → ALERT  
Else → OK

👉 Introduces: parsing storage data

---

### 1.4 — Top Space Hogs
Print top 5 largest files in a directory tree.

👉 Introduces: recursive size analysis

---

# 🧭 Stage 2 — Log Analysis Operator 📜

## 🎯 Skills Introduced
- Pattern detection
- Case-insensitive search
- Counting events
- Time-agnostic log parsing

## 🧩 Problems

### 2.1 — Error Radar
Given log file:

- Count ERROR occurrences
- Print last 5 ERROR lines
- If none → “System clean”

---

### 2.2 — Suspicious Activity Detector
Detect lines containing ANY of:

failed invalid denied refused

Print count + lines.

👉 Introduces: multi-pattern search

---

### 2.3 — Log Growth Monitor
Run on a file:

Print:

- File size
- Line count
- Warning if size > threshold

---

### 2.4 — Unique IP Extractor (Generic)
From log file:

Print unique IP addresses detected.

👉 Introduces: text extraction + deduplication

---

# 🧭 Stage 3 — Process & System Monitoring ⚙️

## 🎯 Skills Introduced
- Process inspection
- Resource ranking
- Runtime state checks
- Command output filtering

## 🧩 Problems

### 3.1 — Process Watchdog
Check if process name is running.

If not → print warning.

---

### 3.2 — Zombie Process Detector
Print processes consuming 0 CPU for long time (heuristic).

👉 Introduces: interpreting process data

---

### 3.3 — Top Memory Offenders
Print top N memory consumers.

User provides N.

---

### 3.4 — System Snapshot Tool
Print summary:

- Uptime
- Memory usage
- Disk usage
- Running processes count

👉 This mimics real monitoring scripts

---

# 🧭 Stage 4 — Automation Tools 🔁

## 🎯 Skills Introduced
- Batch operations
- Iteration across resources
- Script composition
- Non-interactive operation

## 🧩 Problems

### 4.1 — Bulk Renamer
Rename all `.log` files to:

filename_TIMESTAMP.log

---

### 4.2 — Backup Rotator
Create backup folder:

backup_YYYYMMDD_HHMM

Copy target directory into it.

Keep ONLY last 3 backups.

👉 Introduces: retention logic

---

### 4.3 — Permission Fixer
Scan directory:

- Files → 644
- Directories → 755

Print changes made.

---

### 4.4 — Config Deployer (Mini)
Copy config file to multiple target directories.

---

# 🧭 Stage 5 — Interactive Operator Tools 🧑‍💻

## 🎯 Skills Introduced
- Menus
- Loops as UI
- Stateful scripts
- Operator ergonomics

## 🧩 Problems

### 5.1 — System Menu Tool

Menu:

1. Disk Usage


2. Memory Usage


3. Top Processes


4. Exit



Runs selected action repeatedly.

---

### 5.2 — Directory Manager Menu

Options:

- List files
- Count files
- Show largest file
- Exit

---

# 🧭 Stage 6 — Reliability & Production Discipline 🛡️

## 🎯 Skills Introduced
- Fail-safe behavior
- Exit codes strategy
- Defensive checks
- Idempotency mindset

## 🧩 Problems

### 6.1 — Safe Delete Tool
Delete file ONLY after confirmation.

Handle:

- Missing file
- Directory case
- Permission denial

---

### 6.2 — One-Time Setup Script
Script should:

- Create directories
- Create config file if missing
- Skip if already exists
- Never break on re-run

👉 Introduces idempotency (DevOps core concept)

---

# 🧭 Stage 7 — Mini DevOps Utilities 🧨

## 🎯 Final Boss Skills
Combine everything.

## 🧩 Problems

### 7.1 — Health Check Tool
Print:

- Disk OK/ALERT
- Memory OK/ALERT
- Critical process running/not
- Log errors count

Single command health report.

---

### 7.2 — Server Audit Script
Generate report file containing:

- Host info
- Storage summary
- Top processes
- File counts in /var/log

---

### 7.3 — Resource Guardian (Advanced)
Continuously monitor system every N seconds.

If threshold exceeded → print alert.

👉 Introduces long-running scripts

---

# 🏆 Completion Criteria — “Bash Hero” Status

You are ready for Python + DevOps tools when:

✅ You instinctively use pipelines  
✅ You can build tools without Googling basics  
✅ You understand Linux data flows  
✅ You trust Bash for real work  
✅ Scripts feel like utilities, not homework  

---

# 🔥 After This Phase

👉 THEN start Python for:

- Complex logic
- APIs
- Orchestration
- Cloud tooling
- Infrastructure automation

Python becomes a multiplier, not a crutch.

---

## ⚡ Final Operator Advice

> Bash mastery = System mastery  
> Python mastery = Automation mastery  

Build both — in the right order 😎
