#!/bin/bash -x

#read range
read -p "Enter the range : " lower higher

for(( number=lower; number<=higher; number++ ))
do
        half=$((number/2))
        for(( counter=2; counter<=half; counter++ ))
        do
                if [ $((number%counter)) -eq 0 ]; then
                        break
                fi
        done
        if [ $counter -eq $((half+1)) ]; then
                echo -e "$number\t"
        fi
done
