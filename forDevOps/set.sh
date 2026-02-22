#!/usr/bin/env bash

# set -Eeou pipefail
# I use this to make scripts fail faster and be more like robust programs

# -e -> exit if any command fails
# -o pipefail -> check for hidden pipe (|) failures
# -u -> exit on undefined variables
# -E -> makes functions more safer

# Examples :

# 1.
set -e # exit on any Error
ls /nonExistedFolder # Here script stops bcz ls failed
echo "will not be executed"

# 2.
# set -u # exit on unSet variables
# echo "Your Name is $name" # Script stops bcz name is unset
# echo "will not be executed"

# 3.
# set -o pipefail # catch failures in pipes | it changes exit codes on failure of any command within pipe
# false | cat file.txt
# echo "This will run"

# false → exits with status 1
# cat file.txt → runs anyway, because pipelines always start all commands at once
# Important: pipefail does not prevent a command from running, it only affects the exit status of the pipeline.
# Since file.txt doesn’t exist → cat prints cat: file.txt: No such file or directory
# Pipeline exit status = 1 (because false failed) ✅

# normally, bash ignores non-zero exit codes and script continues , but with set -e , it will stop executing further

# 4.
# set -E # inherit ERR traps in Functions
# set -E
# trap 'echo "ERROR OCCURRED!"' ERR
# 
# function risky() {
#     ls /nonexistent_folder
# }
# 
# risky   # ❌ ERR trap triggers

# set -E ensures ERR traps propagate into functions and subshells.
# Without it, the trap may not run if the error happens inside a function.
