#!/bin/bash -x
#function to get user inputs: size and numbers
function getNumbers()
{
        read -p "How many numbers you want to enter : " size
        echo "Enter the $size numbers "
        for(( i=0;i<size;i++ ))
        do
                read numbers[i]
        done
}

#function to find sum of three integer adds to ZERO
function findNumbersAddsToZero()
{
        echo "Elements whose sum is Zero : "

        for(( i=0;i<$((size-2));i++ ))
        do
                for(( j=i+1;j<$((size-1));j++ ))
                do
                        for(( k=j+1;k<size;k++ ))
                        do
                                if (( numbers[i] + numbers[j] + numbers[k] == 0 ))
                                then
                                        echo "(${numbers[i]}) + (${numbers[j]}) + (${numbers[k]}) = 0"
                                fi
                        done
                done
        done
}

getNumbers
findNumbersAddsToZero
