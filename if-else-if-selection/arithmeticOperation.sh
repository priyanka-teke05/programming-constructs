#!/bin/bash -x
read -p "Enter three number : " a b c

#operations
operation1=$(($a+$b*$c))
operation2=$(($a%$b+$c))
operation3=$(($c+$a/$b))
operation4=$(($a*$b+$c))

#Assign operation1 as max min
maximum=$operation1
minimum=$operation1

#find maximum operation value
if [[ $maximum -le $operation2 ]]; then
   maximum=$operation2
fi
if [[ $maximum -le $operation3 ]]; then
   maximum=$operation3
fi
if [[ $maximum -le $operation4 ]]; then
   maximum=$operation4
fi

#Find minimum operation value
if [[ $minimum -ge $operation2 ]]; then
   minimum=$operation2
fi
if [[ $minimum -ge $operation3 ]]; then
   minimum=$operation3
fi
if [[ $minimum -ge $operation4 ]]; then
   minimum=$operation4
fi

#Print maximum minimum operation value
echo "Maximum result is : $maximum"
echo "Minimum result is : $minimum"
