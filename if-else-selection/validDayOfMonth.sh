#!/bin/bash -x

#assign command line arguments
args=("$@")
month=${args[0]}
day=${args[1]}

#check date is true or false
if [[ $month -ge 3 && $month -le 6 ]]; then
   if [[ $month -eq 3 && $day -le 19 || $month -eq 6 && $day -ge 21 ]]; then
      echo "False"
   elif [[ $month%2 -eq 1 && $day -ge 1 && $day -le 31 || $month%2 -eq 0 && $day -ge 1 && $day -le 30 ]]; then
      echo "True"
   else
      echo "False"
   fi
else
   echo "False"
fi
