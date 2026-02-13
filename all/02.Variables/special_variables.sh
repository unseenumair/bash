#!/bin/bash

echo "The filename of current script: $0"
echo "First Variable: $1"
echo "Second Variable: $2"
echo "Total Number of Variables: $#"
echo "Qouted Values: $*"
echo "Individual Qouted Values: $@"
echo "Exit Status of last command executed: $?"
echo "Process number of current Shell: $$"
echo "Process number of last background command: $!"
