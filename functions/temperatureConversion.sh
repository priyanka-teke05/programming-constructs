#!/bin/bash -x

#constants
CELCIUS_TO_FAHRENHEIT=1
FAHRENHEIT_TO_CELCIUS=2
LOW_CELCIUS=0
HIGH_CELCIUS=100
LOW_FAHRENHEIT=32
HIGH_FAHRENHEIT=212

#function to calculate celcius to fahrenheit
function celciusToFahrenheit()
{
        read -p "Enter temperature in Celcius Degree(between 0C to 100C ): " celcius
        if [[ $celcius -ge $LOW_CELCIUS && $celcius -le $HIGH_CELCIUS ]]; then
                fahrenheit=$(echo "scale=4; ($celcius*(9/5))+32" | bc )
        else
                echo "Invalid degree Celcius"
        fi
}

#function to calculate fahreit to celcius
function fahrenheitToCelcius()
{
        read -p "Enter temperature in Fahrenheit Degree(between 32F to 212F ): " fahrenheit
        if [[ $fahrenheit -ge $LOW_FAHRENHEIT && $fahrenheit -le $HIGH_FAHRENHEIT ]]; then
                celcius=$(echo "scale=4; ($fahrenheit-32)*(5/9)" | bc )
        else
                echo "Invalid degree Fahrenheit"
        fi
}

#read user choice
echo -e "1.Fahrenheit to Celcius\n2.Celcius to Fahrenheit"
read -p "Enter your choice : " choice


case $choice in
        $CELCIUS_TO_FAHRENHEIT)
                celciusToFahrenheit
                ;;
        $FAHRENHEIT_TO_CELCIUS)
                fahrenheitToCelcius
                ;;
        *)
                echo "Invalid choice"
                ;;
esac
