#!/bin/bash -x

#function to check prime number
function checkPrime()
{
        local number=$1
        local half=$((number/2))
        for(( i=2;i<=half;i++ ))
        do
                if [ $((number%i)) -eq 0 ]; then
                        break
                fi
        done
        if [ $i -eq $((half+1)) ]; then
                echo "$number is prime number "
        else
                echo "$number is not prime number"
        fi
}

#function to check palindrome
function checkPalindrome()
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
                checkPrime $reverseNumber
        fi
}

#get user input
function getUserValue()
{
        read -p "Enter the number : " userNumber
        checkPrime $userNumber
        checkPalindrome $userNumber
}

#call function
getUserValue

