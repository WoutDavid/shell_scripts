#!/bin/bash

SEND_FULL_NOTIFICATION=true
SEND_RECHARGING_NOTIFICATION=true
lower_bat_bound=20

while true
do
        if  acpi -b | grep -q "Full" && $SEND_FULL_NOTIFICATION; 
        then
                notify-send  "Battery full, you can unplug."
                SEND_FULL_NOTIFICATION=false
        elif acpi -b | grep -q "Discharging"
        then
                SEND_RECHARGING_NOTIFICATION=true
                IFS='%'     # set ',' as general bash delimiter
                BAT=$(acpi -b | awk '{ print $4 " " $5 }')
                read -ra ADDR <<< "$BAT"   # str is read into an array as tokens separated by IFS, like str.split()

                # echo $ADDR
                if [ "$ADDR" -lt "$lower_bat_bound" ] 2>/dev/null; 
                then
                          # echo "$ADDR is lower than $var"
                          notify-send "Battery: $ADDR%, recharge"
                fi

                IFS=' '     # reset ifs to default value after usage, because it's used in other processes as well

        elif acpi -b | grep -q "Charging" && $SEND_RECHARGING_NOTIFICATION;
        then
                SEND_FULL_NOTIFICATION=true
                notify-send "Recharging"
                SEND_RECHARGING_NOTIFICATION=false

        fi
        sleep 20s 
done



