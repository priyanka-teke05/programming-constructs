#!/bin/bash -x

#Enter number like 1, 10, 100,...
read -p "Enter the number(1,10,100,1000, etc) : " number

#Check digit place and display
if [ $number -eq 1 ]; then
   echo "Unit"
elif [ $number -eq 10 ]; then
   echo "Ten"
elif [ $number -eq 100 ]; then
   echo "Hundred"
elif [ $number -eq 1000 ]; then
   echo "Thousands"
elif [ $number -eq 10000 ]; then
   echo "Ten Of Thousands"
elif [ $number -eq 100000 ]; then
   echo "Lac"
elif [ $number -eq 1000000 ]; then
   echo "Unit"
else
   echo "Invalid"
fi
