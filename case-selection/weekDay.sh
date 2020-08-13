#!/bin/bash -x

#read number
read -p "Enter the number : " number

#display sunday monday tuesday ..to 0, 1...respt
case $number in
   1)
      echo "Sunday";;
   2)
      echo "Monday";;
   3)
      echo "Tuesday";;
   4)
      echo "Wednesday";;
   5)
      echo "Thursday";;
   6)
      echo "Friday";;
   7)
      echo "Saturday";;
   *)
      echo "Invalid Input";;
esac
