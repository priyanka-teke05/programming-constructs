#!/bin/bash -x

#read number
read -p "Enter the number : " number

#number in word
case $number in
   1)
      number="One"   ;;
   2)
      number="Two"   ;;
   3)
      number="Three" ;;
   4)
      number="Four"  ;;
   5)
      number="Five"  ;;
   6)
      number="Six"   ;;
   7)
      number="Seven" ;;
   8)
      number="Eight" ;;
   9)
      number="Nine"  ;;
   *)
      echo "Invalid Input" ;;
esac
