#!/bin/bash -x

#function to generate random number
function generateRandomNumbers()
{
   for(( i=0;i<10;i++ ))
   do
      numbers[i]=$((RANDOM%900 + 100))
   done
}

#function to find second largest and smallest number
function findSecondLargestSmallestNumber()
{
   local sign=$1
   first=${numbers[0]}
   second=${numbers[0]}
   for(( i=0;i<10;i++ ))
   do
      if (( $first $sign ${numbers[i]} )); then
         second=$first
         first=${numbers[i]}
      elif (( $second $sign ${numbers[i]} )); then
         second=${numbers[i]}
      fi
   done
   echo "${numbers[@]}"
   echo $second
}

generateRandomNumbers
secondLargest="$( findSecondLargestSmallestNumber '<' )"
secondSmallest="$( findSecondLargestSmallestNumber '>' )"

#!/bin/bash -x

#function to generate random number
function generateRandomNumbers()
{
        for(( i=0;i<10;i++ ))
        do
                numbers[i]=$((RANDOM%900 + 100))
        done
}

#function to find second largest and smallest number
function findSecondLargestSmallestNumber()
{
        local sign=$1
        first=${numbers[0]}
        second=${numbers[0]}
        for(( i=0;i<10;i++ ))
        do
                if (( $first $sign ${numbers[i]} )); then
                        second=$first
                        first=${numbers[i]}
                elif (( $second $sign ${numbers[i]} )); then
                        second=${numbers[i]}
                fi
        done
        echo "${numbers[@]}"
        echo $second
}

generateRandomNumbers
secondLargest="$( findSecondLargestSmallestNumber '<' )"
secondSmallest="$( findSecondLargestSmallestNumber '>' )"
