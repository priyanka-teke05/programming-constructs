#!/bin/bash -x

#dictionary
declare -A birthMonthDict

for (( i=0;i<50;i++ ))
do
        #generate month
        month=$((RANDOM%12+1))
        birthMonthDict["$month"]=$((${birthMonthDict["$month"]}+1))
done

echo "Month : Persons"

#sort and print birthMonthDict
for i in ${!birthMonthDict[@]}
do
        echo "$i : ${birthMonthDict[$i]}"
done | sort -k1 -n
