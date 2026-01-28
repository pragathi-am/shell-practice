#!/bin/bash

# taking input from user and print it 

echo "what is your name :: "
read user_name
echo "person name is : $user_name" 

echo "enter password"
read -s password

#above -s is used to "not visible the password that typed"

echo " password you typed is $password"
