#!/bin/bash -x

#assign command line argument
number=$1

#iterate till power of 2 are less than equal to 2^n
for(( counter=1; counter<=$number; counter++ ))
do
   #print powers of 2
   echo "$((2**$counter))"
done
