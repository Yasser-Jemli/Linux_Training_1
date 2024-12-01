#!/bin/bash

# Author : Yasser JEMLI
# Date : 12-11-2024

# Playing with file descriptors and redirection

# File descriptors are integers that are associated with file input and output. They keep track of
# opened files. The best-known file descriptors are stdin, stdout, and stderr. We even can
# redirect the contents of one file descriptor to another. This recipe shows examples on how to
# manipulate and redirect with file descriptors.

# File descriptors are integers associated with an opened file or data stream. File descriptors 
# 0, 1, and 2 are reserved as follows:
# 0: stdin (standard input)
# 1: stdout (standard output)
# 2: stderr (standard error)

# 1. Redirecting or saving output text to a file can be done as follows:
echo "This is a sample text 1" > temp.txt
# This would store the echoed text in temp.txt by truncating the file, the contents will
# be emptied before writing.
# 2. To append text to a file, consider the following example:
echo "This is sample text 2" >> temp.txt
# 3. You can view the contents of the file as follows:
cat temp.txt
# the output is :

# This is sample text 1
# This is sample text 2

# the Tip of the day 
# Successful and unsuccessful commands
# When a command returns after an error, it returns a nonzero
# exit status. The command returns zero when it terminates
# after successful completion. The return status can be read
# from special variable $? (run echo $? immediately after
# the command execution statement to print the exit status).

ls + > out.txt
# output : ls: cannot access +: No such file or directory

# In the following command, we redirect stderr to out.txt:
ls + 2> out.txt # works

# You can redirect stderr exclusively to a file and stdout to another file as follows:

cmd 2>stderr.txt 1>stdout.txt

# It is also possible to redirect stderr and stdout to a single file by converting
# stderr to stdout using this preferred method:
cmd 2>&1 output.txt
# Or the alternate approach:
cmd &> output.txt

# Sometimes, the output may contain unnecessary information (such as debug
# messages). If you don't want the output terminal burdened with the stderr details
# then you should redirect the stderr output to /dev/null, which removes it
# completely. For example, consider that we have three files a1, a2, and a3. However,
# a1 does not have the read-write-execute permission for the user. When you need to
# print the contents of files starting with a, we use the cat command. Set up the test
# files as follows:
echo a1 > a1
cp a1 a2 ; cp a2 a3;
chmod 000 a1 #Deny all permissions

# While displaying contents of the files using wildcards (a*), it will show an error
# message for file a1 as it does not have the proper read permission:

cat a*
# cat: a1: Permission denied
# a1
# a1

# Here, cat: a1: Permission denied belongs to the stderr data. We can
# redirect the stderr data into a file, whereas stdout remains printed in the
# terminal. Consider the following code:
# $ cat a* 2> err.txt #stderr is redirected to err.txt
# a1
# a1

cat err.txt

# cat: a1: Permission denied
# Take a look at the following code:

cmd 2>/dev/null

# When redirection is performed for stderr or stdout, the redirected text flows
# into a file. As the text has already been redirected and has gone into the file, no text
# remains to flow to the next command throug pipe (|), and it appears to the next set
# of command sequences through stdin.

# However, there is a way to redirect data to a file, as well as provide a copy of
# redirected data as stdin for the next set of commands. This can be done using
# the tee command. For example, to print stdout in the terminal as well as redirect
# stdout into a file, the syntax for tee is as follows:
# command | tee FILE1 FILE2


# In the following code, the stdin data is received by the tee command. It writes a
# copy of stdout to the out.txt file and sends another copy as stdin for the next
# command. The cat -n command puts a line number for each line received from
# stdin and writes it into stdout:

cat a* | tee out.txt | cat -n

# cat: a1: Permission denied
# 1a1
# 2a1

# Examine the contents of out.txt as follows:
cat out.txt

# a1
# a1

# Note that cat: a1: Permission denied does not appear because it belongs to
# stderr. The tee command can read from stdin only.
# By default, the tee command overwrites the file, but it can be used with appended
# options by providing the -a option, for example, $ cat a* | tee -a out.txt | cat -n.

# We can use stdin as a command argument. It can be done by using - as the
# filename argument for the command as follows:

$ cmd1 | cmd2 | cmd -
# For example:
echo who is this | tee -
# who is this
# who is this

# Alternately, we can use /dev/stdin as the output filename to use stdin.
# Similarly, use /dev/stderr for standard error and /dev/stdout for standard
# output. These are special device files that correspond to stdin, stderr,
# and stdout.

# Learn More ......


# For output redirection, > and >> operators are different. Both of them redirect text to a file,
# but the first one empties the file and then writes to it, whereas the later one adds the output
# to the end of the existing file.
# When we use a redirection operator, the output won't print in the terminal but it is directed to
# a file. When redirection operators are used, by default, they operate on standard output. To
# explicitly take a specific file descriptor, you must prefix the descriptor number to the operator.
# > is equivalent to 1> and similarly it applies for >> (equivalent to 1>>).
# When working with errors, the stderr output is dumped to the /dev/null file. ./dev/null
# is a special device file where any data received by the file is discarded. The null device is often
# known as a black hole as all the data that goes into it is lost forever.


# Redirection from a file to a command
cmd < file.txt

# Redirecting from a text block enclosed within a script

# Sometimes we need to redirect a block of text (multiple lines of text) as standard
# input. Consider a particular case where the source text is placed within the shell script.
# A practical usage example is writing a logfile header data. It can be performed as follows:


# #!/bin/bash
# cat<<EOF>log.txt
# LOG FILE HEADER
# This is a test log file
# Function: System statistics
# EOF

# The lines that appear between cat <<EOF >log.txt and the next EOF line will appear as
# the stdin data. Print the contents of log.txt as follows:

cat log.txt

# Custom file descriptors

# A file descriptor is an abstract indicator for accessing a file. Each file access is associated
# with a special number called a file descriptor. 0, 1, and 2 are reserved descriptor numbers
# for stdin, stdout, and stderr.


# We can create our own custom file descriptors using the exec command. If you are already
# familiar with file programming with any other programming language, you might have noticed
# modes for opening files. Usually, the following three modes are used:


# Read mode
# Write with truncate mode
# Write with append mode


# < is an operator used to read from the file to stdin. > is the operator used to write to a
# file with truncation (data is written to the target file after truncating the contents). >> is an
# operator used to write to a file by appending (data is appended to the existing file contents
# and the contents of the target file will not be lost). File descriptors can be created with one of
# the three modes.

# Create a file descriptor for reading a file, as follows:
# $ exec 3<input.txt # open for reading with descriptor number 3
# We could use it in the following way:
# $ echo this is a test line > input.txt
# $ exec 3<input.txt
# Now you can use file descriptor 3 with commands. For example, we will use cat <&3
# as follows:
# $ cat<&3
# this is a test line
# If a second read is required, we cannot re-use the file descriptor 3. It is required that we
# reassign the file descriptor 3 for read using exec for making a second read.
# 26Chapter 1
# Create a file descriptor for writing (truncate mode) as follows:
# $ exec 4>output.txt # open for writing
# For example:
# $ exec 4>output.txt
# $ echo newline >&4
# $ cat output.txt
# newline
# Create a file descriptor for writing (append mode) as follows:
# $ exec 5>>input.txt
# For example:
# $ exec 5>>input.txt
# $ echo appended line >&5
# $ cat input.txt
# newline
# appended line
