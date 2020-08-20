#!/bin/bash -x

#function to generate 3 digit 10 random numbers and store in arrray
function generateRandomNumbers()
{
        for(( i=0;i<10;i++ ))
        do
                numbers[i]=$((RANDOM%900 + 100))
        done
}

#function to sort array
function sortNumbers()
{
        for(( i=0;i<10;i++ ))
        do
                for(( j=i+1;j<10;j++))
                do
                        if (( numbers[i] > numbers[j] ))
                        then
                                temp=${numbers[j]}
                                numbers[j]=${numbers[i]}
                                numbers[i]=$temp
                        fi
                done
        done
        echo "${numbers[@]}"
}

#call functions
generateRandomNumbers
sortNumbers

#store second largest and smallest number
secondSmallest=${numbers[1]}
secondLargest=${numbers[8]}
