#!/bin/bash 

# Author : Yasser JEMLI
# Date   : 12-11-2024

# In Bash , each command or command sequence is delimited by using a semicolon or a new ligne 
# $ cmd1 ; cmd2 
# is same as :
# $ cmd1
# $ cmd2

# we can use instead of echo , the printf whch taken the same arguments as in c language 

printf "Hello World ! \n"
echo ""
echo "" 

printf " %-5s %-10s %-4s \n" No Name Mark 
printf " %-5s %-10s %-4.2f\n" 1 Sarath 80.3456
printf " %-5s %-10s %-4.2f\n" 2 James 90.9989
printf " %-5s %-10s %-4.2f\n" 3 Jeff 77.564

# %s, %c, %d, and %f are format substitution characters for which an argument can be placed
# after the quoted format string.
# %-5s can be described as a string substitution with left alignment (- represents left
# alignment) with width equal to 5. If - was not specified, the string would have been aligned to
# the right. The width specifies the number of characters reserved for that variable. For Name,
# the width reserved is 10. Hence, any name will reside within the 10-character width reserved
# for it and the rest of the characters will be filled with space up to 10 characters in total.
# For floating point numbers, we can pass additional parameters to round off the
# decimal places.
# For marks, we have formatted the string as %-4.2f, where .2 specifies rounding off to two
# decimal places. Note that for every line of the format string a newline (\n) is issued.


# --> while using flags for echo and printf , always make sure that the flags appear before any strings in the command 
# otherwise Bash will considere the flasg as another string 
echo ""
echo "Correct flag usage " ; echo "" ; echo -e "1\t2\t3"  ; echo ""
echo "Bad flasg usage "    ; echo "" ; echo "1\t2\t3" -e  ; echo ""

# Printing a colored output

# Colors are represented by color codes, some examples being, reset = 0, black = 30, red = 31,
# green = 32, yellow = 33, blue = 34, magenta = 35, cyan = 36, and white = 37.

echo ""
echo -e "\e[1;31mThis is red text \e[0m"

echo -e "\e[1;31mwe will right in red "
echo -e "Ops forgot to reset the color , so we're keeping printing in red "
echo -e "let's back to normal from now \e[0m"
echo -e "Check now , are we back to normal ?"
echo ""
echo ""

# For a colored background, reset = 0, black = 40, red = 41, green = 42, yellow = 43, blue = 44,
# magenta = 45, cyan = 46, and white=47, are the color codes that are commonly used.

echo -e "\e[1;42m Green Background \e[0m"
