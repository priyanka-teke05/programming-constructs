#!/bin/bash -x

#variables
factorial=1

#read number
read -p "Enter the number : " number

#find factorial of number
for(( counter=1; counter<=number; counter++))
do
        factorial=$((factorial*counter))
done

#print factorial
echo "Factorial of $number is : $factorial"
