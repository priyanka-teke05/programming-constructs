#!/bin/bash -x

#variables
counter=0

#range 0 to 100
for i in {0..100}
do
	numbers[i]=$((i+1))
	#check digits are same or not, if same store in array
	if [[ ${numbers[i]:0:1} -eq ${numbers[i]:1:1} ]]
	then
		sameDigitsNumber[((counter++))]=${numbers[i]}
	fi
done
