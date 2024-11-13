#!/bin/bash

# Author : Yasser JEMLI
# Date : 12 nov 2024

# Shebang to specify the interpreter for the script

# This shebang tells the OS to use /bin/bash to read and execute this script.
# The term "shebang" comes from the system call `execve()`, which passes the interpreter
# as an argument to run this script.
# You can specify other interpreters as well, e.g., #!/usr/bin/python3 to run a Python script directly.

# Structure of a Bash Script:
#   1 - Define and execute commands sequentially
#   2 - Always use an `exit` statement with an appropriate exit code:
#       - Success (0)
#       - Error (1)

# Get the current date and time
Date=$(date)

# Print a blank line, current date, and a welcome message
echo ""
echo "Current Date and Time: $Date"
echo ""
echo "Hello from Bash Training!"

# Exit with a success status
exit 0

