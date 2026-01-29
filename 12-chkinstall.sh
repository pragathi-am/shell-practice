#!/bin/bash

# to know id of user id . for root user this is always zero
userid=$(id -u)

if [ $userid -ne 0 ]; then
   echo " please run with sudo user"
   exit 1
fi

# this function will not execute by shell. it will execute only when it being called .
validate() {
  if [ $? -ne 0 ]; then 
   echo " nginx installed failed"
   exit 1
else
   echo " nginx installed success"
fi   
}

echo " installing ngnix"
dnf install nginx -y 

# call validate function here after installation by passing args exitcode $? and pkgname

validate $? "nginx"

echo " installing mysql"
dnf install mysql -y 

validate $? "mysql"

echo " installing nodejs"
dnf install nodejs -y 

validate $? "nodejs"