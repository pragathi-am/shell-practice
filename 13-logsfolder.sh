#!/bin/bash

# to know id of user id . for root user this is always zero
userid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
if [ $userid -ne 0 ]; then
   echo " please run with sudo user"
   exit 1
fi

# this function will not execute by shell. it will execute only when it being called .
validate() {
  if [ $1 -ne 0 ]; then 
   echo " $2 installed failed"
   exit 1
else
   echo " $2 installed success"
fi   
}

echo " installing ngnix"
dnf install nginx -y &>> $LOGS_FILE    # store command output to logfile

# call validate function here after installation by passing args exitcode $? and pkgname

validate $? "nginx"

echo " installing mysql"
dnf install mysql -y &>> $LOGS_FILE

validate $? "mysql"

echo " installing nodejs"
dnf install nodejs -y &>> $LOGS_FILE

validate $? "nodejs"