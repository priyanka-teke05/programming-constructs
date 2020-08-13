#!/bin/bash -x

#enter year
read -p "Enter the Year : " year

#check if year divisible by 4 and not 100 unless divisible by 400
if [[ $year%400 -eq 0 || $year%4 -eq 0 && $year%100 -ne 0 ]]; then
   echo "Year $year is Leap Year"
else
   echo "Year $year is not Leap Year"
fi
