#!/bin/bash

ps -eo pid,comm,%mem --sort=-%mem | head -n 6

<< problem
  7️⃣ Top Memory Consumer
  
  Print top 5 processes consuming highest memory.
problem
