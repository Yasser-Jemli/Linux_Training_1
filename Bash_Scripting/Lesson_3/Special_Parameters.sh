#!/bin/bash

#       Author  : Yasser JEMLI
#       Date    : 12-11-2024


echo "Welcome To special Parameters"

if [[ $# -ne 2 ]]; then
    echo " You didnt enter exactly 2 parmeters"
    echo " Usage : $0 <file1> <file2>"
    exit 1
else
    echo " You Type --> $0 $1 $2 "
    echo " Great :D"
    # exit 0
fi


echo " now let's see another special Parameters "
# ----> let's see what $@ does
echo " the dollar@ variable is storing : $@ "
# ----> try the $* special Variable and give us your observation


