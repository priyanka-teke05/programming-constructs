#!/bin/bash -x

#First dice number
firstNumber=$((RANDOM%6+1))

#second dice number
secondNumber=$((RANDOM%6+1))

#add dice number
addition=$((firstNumber+secondNumber))

#print result
echo "Addition is $addition"
