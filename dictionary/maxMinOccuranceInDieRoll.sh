#!/bin/bash -x

declare -A dict
dictValue=1

#Function to get dice number and repeat till any one of the number has reached 10 times
function diceRoll()
{
        while [[ dict[$dictValue] -ne 10  ]]
        do
                dictValue=$((RANDOM % 6 + 1))
                dict["$dictValue"]=$((${dict["$dictValue"]}+1))
        done
        echo "${!dict[@]} value= ${dict[@]}"
}

#Function to find the number that reached maximum times and the one that was for minimum times
function findMaxMinOccurance()
{
        order=$1

        #iterate dict keys
        for i in ${!dict[@]}
        do
                echo $i ${dict[$i]}
        done | sort -k2 $order | head -n 1
}

diceRoll
maximumOccurance="$(findMaxMinOccurance '-rn' )"
minimumOccurance="$(findMaxMinOccurance '-n' )"
