#!/bin/bash

#   Author      :       Yasser JEMLI
#   Date        :       12-11-2024

# try out in your shell to do the following
# type in terminal read command
# you will notice that shell is waiting for input from you and the shell ligne is not appearing
# type Hello and press enter
# you will notice that shell is no longer waiting for input and the ligne is moved back as noraml 
# check if shell is saving your input by tayping -> echo $REPLY

# now let's try to stroe the input in differenet variables ( our own variables)
# type read input1 input2 
# then type hello goodbay 
# don't forget to put space between the two world 
# now check echo $input1  and echo input2 
# well done :D

read name age town 
echo "My name is $name"
echo "My age is $age"
echo "My town is $town"


read -p "Input your first Name : " name 
echo "My name is $name"

read -t 5 -p "Input your name in less then 5 seconds : " name
echo "My name is $name"

read -s -t 5 -p "Put your name in less then 5 seconds , ( nothing will be displayed when you're typing)" name
echo "my NAME is $name"

# read -N 4 -p " enter your PIN passcode (must be 4 digits) : " digit
# echo " your passcode is $digit "