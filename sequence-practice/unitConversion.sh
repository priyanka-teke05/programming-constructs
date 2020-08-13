#!/bin/bash -x

#conversion inch to feet
#a. 1ft = 12 in then 42 in = ? ft
inch=42
feet=`expr "scale=2; $inch/12" | bc`

#conversion feet to meters
#b. Rectangular Plot of 60 feet x 40 feet in meters
length=60
width=40
rectangularPlot=$((length*width))
plotAreaInMeters=$(echo "scale=2; $rectangularPlot*0.3048" | bc)

#c. Calculate area of 25 such plots in acres
areaOf25Plots=$(echo "scale=2; $plotAreaInMeters*25" | bc )
plotsAreaInAcre=$(echo "scale=2; $areaOf25Plots*0.000247105" | bc )
