#!/bin/bash -x

#variables
counter=0

#function to find prime factors
function findPrimeFactors()
{
        local number=$1
        local storeNumber=$number

        #Print the number of 2s that divide number
        while [[ $((number%2)) -eq 0 ]]
        do
                primeFactor[((counter++))]=2
                number=$((number/2))
        done

        #excluding 2 all primes numbers are odd. so incremented by 2
        for(( i=3; i<=number; i=$((i+2)) ))
        do
                while [ $((number%i)) == 0 ]
                do
                        primeFactor[((counter++))]=$i
                        number=$((number/i))
                done
        done
        echo "Prime Factors of $storeNumber: " ${primeFactor[@]}
}

#read number
read -p "Enter the number : " userNumber
findPrimeFactors $userNumber
