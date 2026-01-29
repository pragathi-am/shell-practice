#!/bin/bash

set -e
trap ' echo "there is an error in line num; $LINENO for command: $BASH_COMMAND " ' ERR

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"  # no color

num1=20

# to chck number is greater than 20 or not
echo
if [ $num1 -gt 20 ]; then 
   echo -e "$num1 is $R greater $N than 20"
 elif [ $num1 -eq 20 ]; then
   echo -e "$num1 is $G equal $N to 20"
   echooo -e "$num1 is $G equal $N to 20"
 else  
   echo -e "$num1 is $B less $N than 20"
fi