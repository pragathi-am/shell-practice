#!/bin/bash

num1=25

# to chck number is greater than 20 or not

if [$num1 gt 20] ; then 
   echo "$num1 is greater than 20"
 elif [$num1 eq 20] ; then
   echo "$num1 is equal to 20"
 else [$num1 lt 20] ; then  
   echo "$num1 is less than 20"
fi