#!/bin/bash

# to know id of user id . for root user this is always zero
userid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/backup.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"  # no color


if [ $userid -ne 0 ]; then
   echo " please run with sudo user" 
   exit 1
fi

mkdir -p $LOGS_FOLDER

usage() {
    echo -e "enter source dir , target dir and number of days to backup(default 14days)"
    exit 1 
}
# here $# refers numb of arguments 
if [ $# -lt 2 ]; then
   usage     
   exit 1
fi 