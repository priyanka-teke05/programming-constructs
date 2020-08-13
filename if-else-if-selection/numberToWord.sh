#!/bin/bash -x

#Enter number
read -p "Enter the number : " number

#length of number
numberLength=${#number}

#check if number is single digit
if [ $numberLength -eq 1 ]; then
   #number in word
	if [ $number -eq 0 ]; then
		number="Zero"
   elif [ $number -eq 1 ]; then
      number="One"
   elif [ $number -eq 2 ]; then
      number="Two"
   elif [ $number -eq 3 ]; then
      number="Three"
   elif [ $number -eq 4 ]; then
      number="Four"
   elif [ $number -eq 5 ]; then
      number="Five"
   elif [ $number -eq 6 ]; then
      number="Six"
   elif [ $number -eq 7 ]; then
      number="Seven"
   elif [ $number -eq 8 ]; then
      number="Eight"
   elif [ $number -eq 9 ]; then
      number="Nine"
   fi
else
   echo "Number is not a single digit number"
fi
