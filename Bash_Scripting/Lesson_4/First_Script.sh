#!/bin/bash 

# Author : Yasser JEMLI
# Date   : 12-11-2024

echo -e " \e[1;31m Let's Learn Arrays and associative arrays \e[0m"
echo ""

# Arrays are a very important component for storing a collection of data as separate entities
# using indexes. Regular arrays can use only integers as their array index. On the other hand,
# Bash also supports associative arrays that can take a string as their array index. Associative
# arrays are very useful in many types of manipulations where having a string index makes more
# sense.

my_array[0]="Welcome to this Lesson"
my_array[1]="Today we will Talk about Arrays"
my_array[2]="Well who dosen't like to store his Data in very organize and indexed way"


echo ${my_array[*]}
echo " Or we can try this "
echo ""
echo ${my_array[@]}

echo ""
echo "Let's Jump to Associative arrays"
echo ""

declare -A Fruites
Fruites=([Appel]='8 DT' [Orange]='4 DT' [Ananas]='15 DT')

echo "The appels today cost ${Fruites[Appel]}"
echo " The orange todat cost ${Fruites[Orange]}"

echo " Let's ceck the indexes that we have in our array Fruites[]"
echo ${!Fruites[*]}
echo ""
echo "Or we can try also "
echo ${!Fruites[@]}
