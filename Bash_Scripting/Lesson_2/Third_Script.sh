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