#!/bin/bash

#take date command o/p to var1 and print it
#it can be done by variable=$(command)

var1=$(date)
echo "script executed at $var1"
sleep 10
echo "script stopped at $var1"