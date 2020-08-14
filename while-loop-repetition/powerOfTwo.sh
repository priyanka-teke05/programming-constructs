#!/bin/bash -x

#constants
readonly REACHED_POSITION=256

#variables
number=$1
counter=1
powerOfTwo=0

#Iterate till counter is <= given number or 2's power is < 256
while [[ $counter -le $number && $powerOfTwo -lt $REACHED_POSITION ]]
do
        powerOfTwo=$((2**$counter))
        echo "$powerOfTwo"
        counter=$((counter+1))
done
