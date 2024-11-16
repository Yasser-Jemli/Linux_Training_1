#!/bin/bash 

# Check if a program is passed as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

# Monitor the system calls of the specified command
echo "Tracing system calls for command: $1"
strace -c -o syscalls_report.log $@

# Display summary of system calls
echo "Summary of system calls used:"
cat syscalls_report.log
