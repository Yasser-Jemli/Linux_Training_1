#!/bin/bash

# Author 	:	Yasser JEMLI
# Date		:	12-11-2024


# ***************************************************************************
# ******************** Section 1 ********************************************
#	Shell Variables
# ***************************************************************************

echo " -------------------> Section 1 <----------------------------"
echo "		Shell Variables		"
echo ""

Date=$(date)
echo " Date --> ${Date} "
echo ""

# how shall finds the command and where he look for command
# try to check the $PATH variable

echo " where BASH is looking for commands ? "
echo " the Path is : ${PATH} "
echo ""

# what kind of CPU architecture is this machine ?

echo " what kind of CPU architecture is this machine ? "
echo " the CPU architecture is : ${HOSTTYPE} "
echo ""

# what's the name of this PC ?

echo " what's the name of this PC ? "
echo " the name of this machine is ${HOSTNAME} "
echo ""

#  Check what's the PS1 variable with ` echo "${PS1}" `

echo " For you :) -->  check  the PS1 shell variable"
echo " Customize your own PS1 ;) --> you can use this website "

# check https://ezprompt.net/ to customize your PS1 variable

echo " https://ezprompt.net/"
echo ""

# ***************************************************************************
# ****************** Section 2 **********************************************
#	Parameter Expansions
# ***************************************************************************

echo ""
echo " --------------> Section 2 <----------------------------------"
echo "		Paremeter Expansions	"
echo ""

echo $USER
echo ""

echo " Print Out The Name of The Current USER , and the first letter must be in uppercase"

echo " ${USER^}"
echo ""

echo " Print out the name of the Current USER , and all the letters must be in uppercase"
echo " ${USER^^}"
echo ""

echo " Find out the length of a String with Bash "
echo ""

echo " ${#USER}"
echo ""
echo ""

echo " Move to Slicing , :D slicing hummm i want a Slice of Pizza :D"
echo ""

number=012555220

echo " We definie a variable called number with value : 012555220"
echo ""

echo " try this --> $ {parametre:offset:length} "
echo " ${number:3:3}"
echo ""

echo " Lets Take from the First 5 in the number variable untill the end "
echo " ${number:3}"
echo ""

echo " Let's take from the last 5 (without including the five )  in the number variable untill the end"
echo " ${number: -3:3}"

echo "-------------------------------------------------------------"
echo "		Arithmetic Expansion "

x=5
y=6

echo $(($x + $y ))
echo ""

echo $(( $x ** $y ))
echo ""


# Check out next ligne Outside this Script
# Try out echo $(( 2.5 + 1 ))
# output of the previous command --> bash: 2.5 + 1 : syntax error: invalid arithmetic operator (error token is ".5 + 1 ")

echo $(( 5 / 2 ))
echo ""

# *************************************************************************************************************************************
# bc command ( Basic Calculator ) check --> man bc 
# *************************************************************************************************************************************

echo " Check bc command "
echo ""

echo "5/2" | bc
echo ""
echo "we didn't solve the issue the output is 2 instead of 2.5 "
echo ""
echo "scale=2; 5/2" | bc
echo ""
echo "scale=10; 5/2" | bc


# *****************************************************************************************************************************************
# Check other shell Variables
# *****************************************************************************************************************************************

echo " Your current Directory is ${PWD}"
echo ""

echo " Your Previous Directory is ${OLDPWD}"
echo ""

echo " Let's Jump to your previous Directory Using Telda ~"
echo " the command is cd ~- "
cd ~-
echo ""
echo " Let's Back to your main Directory which is now a previous Directory , hhh it's confusing Right ? :D"
cd ~-
echo " Try those command on your own i'm sure you well understand :D"
echo ""


# *******************************************************************************************************************************************
# Brace Expansion
# *******************************************************************************************************************************************

echo " Let's Display the numbers from 1 to 9 , but in a smarter way "
echo {1..9}

echo " Let's Display all letters in order "
echo {a..z}

echo " Let's display numbers from 0 to 100 by with a step of 10 "
echo {0..100..10} 


echo " Try to Print this -->  Month1 Month2 Month3 .... Month12 "
echo Month{1..12}

echo " we have a variable var which have the value 00225544"
echo " how to know the length of it directly "
var=00225544
echo ${#var}

# **************************************************************************
# More Bash Variables
# **************************************************************************

echo ""
echo "---------------- More Intersting shell varaiables -----------------------------------------"

echo ""

# Try those command
echo " Let's try something new "
echo "" 
gedit &
Gedit_Process_Output=$(pgrep gedit)

# Now from the output which the PID , try this command and examin the output 
cat /proc/$Gedit_Process_Output/environ 
echo ""
echo "Kill the gedit Process in the background "
kill -9 $Gedit_Process_Output
echo ""
echo ""
echo ""
echo " Lets' start over but with more enhacements"

gedit &
Gedit_Process_Output=$(pgrep gedit)

# Now from the output which the PID , try this command and examin the output 
cat /proc/$Gedit_Process_Output/environ | tr '\0' '\n'
echo ""
echo "Kill the gedit Process in the background "
kill -9 $Gedit_Process_Output
echo ""
echo ""
echo ""

# The export command is used to set the env variable. Now any application, executed from
# the current shell script, will receive this variable. We can export custom variables for our
# own purposes in an application or shell script that is executed. There are many standard
# environment variables that are available for the shell by default.

echo " Try export command , give and example by forking another shell and see Parents child relation ;) "
echo ""

echo " How shell is looking for the command ? did he search in all directories ?"
echo " i don't think so :/"
echo " check the PATH env variable "
echo " Type this command " && echo 'echo $PATH'
echo $PATH

# When given a command for execution, the shell automatically searches for the executable
# in the list of directories in the PATH environment variable (directory paths are delimited by
# the ":" character). Usually, $PATH is defined in /etc/environment or /etc/profile or
# ~/.bashrc. When we need to add a new path to the PATH environment, we use:
# export PATH="$PATH:/home/user/bin"

# When using single quotes, variables will not be expanded and will be
# displayed as is. This means:
# $ echo '$var' will print $var
# Whereas, $ echo "$var" will print the value of the $var variable if
# defined or nothing at all if it is not defined.

echo " Try this Known Variable : HOME ,PWD ,USER ,UID ,SHELL..."


# *********************** Making files immutable *********************************

# Files on extended type filesystems, which are common in Linux (for example, ext2, ext3, ext4,
# and so on) can be made immutable using a certain type of file attributes. When a file is made
# immutable, any user or super user cannot remove the file until the immutable attribute is
# removed from the file. We can easily find out the filesystem type of any mounted partition
# by looking at the /etc/mtab file. The first column of the file specifies the partition device
# path (for example, /dev/sda5) and the third column specifies the file system type
# (for example, ext3).
# 
# Making a file immutable is one of the methods for securing files from modification. An
# example would be to use it for the /etc/resolv.conf file which stores a list of DNS servers.
# A DNS server is used to convert domain names (such as packtpub.com) to IP addresses.
# Usually, the DNS server will be set to your ISP's DNS server. However, some people prefer
# to use a third-party server and they can modify /etc/resolv.conf to point to that DNS.
# However, the next time you get connected to your ISP, /etc/resol

echo " Let's Test what we just Saw ! "

echo " Create a file and store some data into it "
echo " Now try to make your file immutable "
echo " to do so you need to type the command chattr +i file "
echo " Now remove it if you can :D"

echo ""
echo " In order to make it writable again , you need to remove the attribute as follows "
echo " chattr -i file "