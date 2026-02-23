# 🧨 Phase 5 — Real-World Bash + Python Orchestration Problems 💻🔥

> Goal: Build production-ready automation pipelines that **can’t be solved with Bash or Python alone**.  

---

## 1️⃣ Problem 1 — Log Validator & Cleaner 🧹

**What to do:**  
- Bash takes a log file path (argument or interactive).  
- Validate: file exists, readable, non-empty.  
- Pass contents to Python.  
- Python filters out malformed log lines (e.g., missing timestamps or fields) and outputs a **cleaned log file**.  
- Bash then rotates old logs (archive with timestamp).  

**Focus:** Input validation, file handling, Bash + Python orchestration, logging.  

---

## 2️⃣ Problem 2 — Multi-Source Log Aggregator 📊

**What to do:**  
- Bash takes a directory containing multiple log files.  
- For each file:  
  - Validate readability  
  - Pass contents to Python  
  - Python extracts error-level lines only  
- Python returns a summary per file (`filename: n_errors`)  
- Bash aggregates and prints a **master error report** sorted by highest errors.  

**Focus:** Loops, error handling, passing structured data between Bash & Python, formatted reports.  

---

## 3️⃣ Problem 3 — API Status Monitor 🌐

**What to do:**  
- Bash reads a list of URLs from a file.  
- For each URL:  
  - Python checks API availability (`GET`)  
  - Validates JSON response structure  
  - Extracts critical fields  
- Bash logs results to a timestamped file with status (`UP/DOWN`)  
- Python returns summary stats (total UP / DOWN APIs)  

**Focus:** Bash loops, Python HTTP requests, input validation, logging, orchestration.  

---

## 4️⃣ Problem 4 — Batch Data Uploader 🚀

**What to do:**  
- Bash reads multiple CSV files from a folder  
- For each file:  
  - Validate headers and required fields  
  - Pass to Python  
  - Python calls a mock API to upload rows (simulate failures for some rows)  
  - Python returns success/fail counts  
- Bash collects results, writes **master upload report** and handles retries for failed files  

**Focus:** File validation, Bash-Python communication, structured API calls, error handling, reporting.  

---

## 5️⃣ Problem 5 — JSON Merger & Cleaner 🔗

**What to do:**  
- Bash reads multiple JSON files from different directories  
- Python merges JSON objects while validating keys and types  
- Python returns a **combined JSON**  
- Bash formats this into a **human-readable log** with totals and errors  
- Must gracefully handle missing keys, duplicates, and malformed JSON  

**Focus:** Data validation, Python parsing, Bash reporting, combining multiple sources.  

---

## 6️⃣ Problem 6 — Real-Time API Logger ⏱️

**What to do:**  
- Bash launches a loop every N seconds  
- Reads URLs from a config file  
- Python calls APIs concurrently (simulate multi-threading)  
- Python validates response and logs: timestamp, URL, status, and extracted metrics  
- Bash rotates logs hourly and generates **summary of last 1 hour**  

**Focus:** Real-time orchestration, concurrency handling, validation, logging & rotation.  

---

## 7️⃣ Problem 7 — Ultimate Automation Challenge 💀🔥

**What to do:**  
- Bash orchestrates a full system:  
  - Reads multiple directories, multiple log files  
  - Validates paths, rotates old logs  
  - Passes batches to Python for:  
    - Cleaning and summarizing logs  
    - Calling multiple APIs (simulate batch uploads, failures, retries)  
    - Generating structured output (`JSON + human-readable`)  
- Bash merges outputs into a **master dashboard** file  
- Must handle:  
  - File not found  
  - Malformed logs  
  - API failures and retries  
  - Timestamping & archiving  
  - Alerts if certain thresholds exceeded (like >10 errors)  

**Focus:** **Everything you’ve learned** — Bash orchestration, Python validation, API integration, logging, retries, structured outputs.  

---

💡 **Brutal truth:**  

> Solving Problem 7 successfully means you’ve built a **production-ready Bash + Python pipeline** — exactly the kind of scripts that would **impress any senior engineer** and put you in the top 0.01% of Junior DevOps candidates.
