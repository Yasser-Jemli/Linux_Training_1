#!/bin/bash

# Author 	:	Yasser JEMLI
# Date		:	12-11-2024


# ******************** Section 1 ********************************************
#	Shell Variables

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

