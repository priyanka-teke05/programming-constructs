#!/bin/bash -x

#random to generate 0 or 1
flipCoin=$((RANDOM%2))

#if flipCoin equals to 0 print Head else print tail
if [[ $flipCoin -eq 0 ]]; then
   echo "Head"
else
   echo "Tail"
fi
