#!/bin/bash -x

#Function to check palindrome number
function palindrome()
{
        local number=$1
        local storeNumber=$number
        local reverseNumber=0

        while [ $number -gt 0 ]
        do
                remainder=$((number%10))
                reverseNumber=$(( (reverseNumber*10)+remainder ))
                number=$((number/10))
        done
        if [ $storeNumber -eq $reverseNumber ]; then
                echo "$storeNumber is palindrome"
        else
                echo "$storeNumber is not palindrome"
        fi
}

#read numbers
read -p "Enter Number : " firstNumber

#call function
palindrome $firstNumber
read -p "Enter Number : " secondNumber
palindrome $secondNumber
