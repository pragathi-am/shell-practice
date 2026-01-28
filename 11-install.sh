#!/bin/bash

# to know id of user id . for root user this is always zero
userid=$(id -u)

if [ $userid -nq 0 ]; then
   echo " please run with sudo user"
   exit 1
fi

echo " installing ngnix"

dnf install nginx -y 

if [ $? -ne 0 ]; then 
   echo " nginx installed failed"
   exit 1
else
   echo " nginx installed success"
fi   

