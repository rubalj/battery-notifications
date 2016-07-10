#!/bin/bash

while true;do 

STATE=$( upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state:" | cut -b 26- )

if [ $STATE = "fully-charged" ]
then 

zenity --info --text "Battery Full!"
break
 
fi

done


