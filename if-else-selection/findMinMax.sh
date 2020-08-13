#!/bin/bash -x

# 5 RANDOM 3 digits value
firstValue=$(( RANDOM%900+100 ))
secondValue=$(( RANDOM%900+100 ))
thirdValue=$(( RANDOM%900+100 ))
forthValue=$(( RANDOM%900+100 ))
fifthValue=$(( RANDOM%900+100 ))

#Assign firstValue maximum and minium
maximum=$firstValue
minimum=$firstValue

#find maximum value
if [[ $maximum -le $secondValue ]]; then
   maximum=$secondValue
fi
if [[ $maximum -le $thirdValue ]]; then
   maximum=$thirdValue
fi
if [[ $maximum -le $forthValue ]]; then
   maximum=$forthValue
fi
if [[ $maximum -le $fifthValue ]]; then
   maximum=$fifthValue
fi

#find minimum value
if [[ $minimum -ge $secondValue ]]; then
   minimum=$secondValue
fi
if [[ $minimum -ge $thirdValue ]]; then
   minimum=$thirdValue
fi
if [[ $minimum -ge $forthValue ]]; then
   minimum=$forthValue
fi
if [[ $minimum -ge $fifthValue ]]; then
   minimum=$fifthValue
fi

#Print maximum and minimum value
echo -e "Minimum value is : $minimum\nMaximum value is : $maximum"
