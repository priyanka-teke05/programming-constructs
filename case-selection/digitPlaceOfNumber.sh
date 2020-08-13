#!/bin/bash

#read number 1, 10, 100
read -p "Enter the number : " number

#check number and display unit, ten.
case $number in
   1)
      echo "Unit";;
   10)
      echo "Ten";;
   100)
      echo "Hundred";;
   1000)
      echo "Thousand";;
   10000)
      echo "Ten Thousand";;
   100000)
      echo "Lac";;
   1000000)
      echo "Ten Lac";;
   *)
      echo "Invalid Input";;
esac
