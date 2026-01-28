#!/bin/bash

num1=100
num2=20.22
num3=hello

sum2=$(echo "$num1 + $num2" | bc)
sum3=$(($num1+$num3))

echo "sum of $num1 and $num2 is : $sum2"
echo "sum of $num1 and $num3 is : $sum3"
