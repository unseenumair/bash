# 🚀 Phase 4 — Bash + Python Orchestration

> Goal: Learn hybrid Bash + Python workflows gradually. Each problem ramps up complexity but keeps it digestible.

---

## 🧩 Problem 1 — Simple Greeting Logger 👋

**What to do:**  
- Bash asks for your name (argument or interactive).  
- Pass name to Python.  
- Python prints greeting and writes `Hello <name>` with timestamp to `greetings.log`.  

**Focus:** Basics of Bash → Python argument passing and logging.

---

## 🧩 Problem 2 — Directory File Count 📁

**What to do:**  
- Bash takes a directory path.  
- Bash passes file list to Python.  
- Python counts files vs directories and prints:
- Files: X, Directories: Y

  **Focus:** Bash loops + Python counting → structured output.

---

## 🧩 Problem 3 — Keyword Finder 🔍

**What to do:**  
- Bash reads a log file + keyword.  
- Pass contents + keyword to Python.  
- Python counts occurrences of the keyword and prints a small report.  

**Focus:** Text parsing, argument passing, and reporting.

---

## 🧩 Problem 4 — Top File Size Reporter 💾

**What to do:**  
- Bash lists all files with sizes (`du -ah`).  
- Python receives this list and prints **top 5 largest files** with sizes.  

**Focus:** Bash → Python pipelines, sorting logic.

---

## 🧩 Problem 5 — Process Memory Tracker 🧠

**What to do:**  
- Bash runs `ps aux` and filters top memory processes.  
- Python receives data and highlights processes using > X% memory.  
- Print top 5 heavy processes in a clean table.  

**Focus:** Bash system commands → Python parsing & filtering.

---

## 🧩 Problem 6 — Backup Mini Tool 💾📦

**What to do:**  
- Bash copies all files from a directory to a timestamped backup folder.  
- Python receives file list + sizes and prints a JSON summary:
- { "file": "", "size": , "status": "success" }

  **Focus:** File ops, JSON formatting, error handling.

---

## 🧩 Problem 7 — Disk Usage Alert 🚨

**What to do:**  
- Bash collects disk usage of `/` using `df -h`.  
- Pass percentage to Python.  
- Python prints warning if usage > 85% and prints a summary table.  

**Focus:** Bash → Python numeric data → conditional alerts.

---

## 🧩 Problem 8 — Multi-Log Scanner 📜

**What to do:**  
- Bash iterates over multiple logs in a directory.  
- Python counts errors/warnings in each log.  
- Output CSV:
filename,errors,warnings

**Focus:** Looping, structured CSV output, pipelines.

---

## 🧩 Problem 9 — Interactive CLI Assistant 🤖

**What to do:**  
- Bash asks user which task to run:  
1️⃣ File stats  
2️⃣ Disk alert  
3️⃣ Backup  
- Pass choice to Python, which executes task and prints results.  

**Focus:** Multi-mode CLI, input handling, modular Python functions.

---

## 🧩 Problem 10 — DevOps Legend Mini Dashboard 🏆

**What to do:**  
- Bash orchestrates multiple data sources:  
- Directory file stats  
- Disk usage  
- Top memory processes  
- Python aggregates all data, evaluates thresholds, prints a **colored CLI summary** + JSON report.  

**Focus:** Full pipeline orchestration, structured output, real-world mindset.

---
