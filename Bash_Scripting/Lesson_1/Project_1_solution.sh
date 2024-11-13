#!/bin/bash

# -------------------------------------------------------------------
# Author 	: 	Yasser JEMLI
# Date Created  : 	12/11/2024
# Date Modified :	12/11/2024

# Description :
# Create a backup in ~/Linux_Training/Bash_Scripting folder of all files in the home directory

# Usage :
# Project_1_solution

tar -cvf ~/Linux_Training/Bash_Scripting/My_backup"$(date +%d-%m-%Y_%H-%M-%S).tar" ~/Linux_Training/Bash_Scripting 2>/dev/null

echo ""
echo "Make Sure to add the necessary Permissions as you Boss ask"
echo "Go to --> http://permissions-calculator.org/  for the calculation "
echo " Remember Owner can read , write and execute"
echo " 			Group can read and execute"
echo " 				others can read only "
exit 0
