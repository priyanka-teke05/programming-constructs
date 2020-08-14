#!/bin/bash -x
read -p "Enter the number : " number

#Print the number of 2s that divide number
while [[ $((number%2)) -eq 0 ]]
do
        echo "2"
        number=$((number/2))
done

#excluding 2 all primes numbers are odd. so incremented by 2
for(( i=3; i<=number; i=$((i+2)) ))
do
        while [ $((number%i)) == 0 ]
        do
                echo "$i"
                number=$((number/i))
        done
done

#when number is prime number greater than 2
if [ $((number/2)) -gt 2 ]
then
        echo "$number"
fi
