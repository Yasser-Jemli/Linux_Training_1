#!/bin/bash

# Author 	:	Yasser JEMLI
# Date		:	12-11-2024


# with equal (=) we cannot have space otherwise shell will think student a command
# and then give you an error command not found (127)
# try that and check

student="Smart cockpit"

echo "Hello ${student} "

Date=$(date)

echo ""
echo "*************************************** E-MAIL ***********************************************************"
echo " Date is : $Date "
echo ""
echo " Dear ${student}  "
echo " The Board and I would like to thank you for the excellent work that you have been doing over the last few months"
echo ""
echo " Keep up the good work !"
echo ""
echo " Best wishes"
echo " Linux Training , CEO"
echo ""
echo "**********************************************************************************************************"
