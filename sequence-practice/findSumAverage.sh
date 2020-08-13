#!/bin/bash -x

#constants
TOTAL_VALUES=5

#getting 5 random 2 digit number and calculating sum
firstValue=$(( RANDOM%90+10))
secondValue=$(( RANDOM%90+10))
thirdValue=$(( RANDOM%90+10))
fourthValue=$(( RANDOM%90+10))
fifthValue=$(( RANDOM%90+10))

#sum of 5 random 2 digit numbers
sumOfValues=$((firstValue+secondValue+thirdValue+fourthValue+fifthValue))

#average of 5 random 2 digit numbers
average=$(echo "scale=2; $sumOfValues/$TOTAL_VALUES" | bc )
