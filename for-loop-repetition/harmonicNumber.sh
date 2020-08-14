#!/bin/bash -x

#constants
readonly NUMBER=$1

#variables
harmonicNumber=0

#iterate till nth harmonic number
for(( counter=1; counter<=$NUMBER; counter++ ))
do
   #calculate harmonic
   harmonicNumber=$( echo " scale=2; $harmonicNumber+1/$counter" | bc )
done

#print harmonic number
echo "Harmonic Number : $harmonicNumber"
