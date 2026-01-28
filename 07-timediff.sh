#!/bin/bash

#take date command o/p to var1 and print it
#it can be done by variable=$(command)

var1=$(date +%s)
echo "script executed at $var1"
sleep 10
var2=$(date +%s)
echo "script stopped at $var2"
difftime=$(($var2 - $var1))
echo "script executed for $difftime seconds"