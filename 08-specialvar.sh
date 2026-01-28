#!/bin/bash

#special variables 

echo "all  args passed to script with @ is :  $@"
echo "  no. of vars to script : $#"
echo "script name:  $0"
echo "present working dir: $PWD"
echo "who is running this script: $USER"
echo "home dir of user:: $HOME"
echo "PID of script : $$"
sleep 100 &
echo "background process PID: $!"
echo "all  args passed to script with * is : $*"