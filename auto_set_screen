#!/bin/bash

# This script gets called by .xinitrc in my dwm config
# So do not delete.

# default monitor is eDP-1-1
MONITOR=eDP-1-1

# function ActivateLaptop{
#         echo "Defaulting to eDP-1-1"
#         xrandr --output eDP-1-1 --auto
#         MONITOR=eDP-1-1
# }

# functions to switch from LVDS1 to VGA and vice versa
function ActivateHDMI {
    echo "Switching to HDMI-0"
    xrandr --output HDMI-0 --auto --output eDP-1-1 --off
    MONITOR=HDMI-0
}

function DeactivateHDMI {
    echo "Switching to eDP-1-1"
    xrandr --output HDMI-0 --off --output eDP-1-1 --auto
    MONITOR=eDP-1-1
}

# functions to check if HDMI-0 is connected and in use
function HDMIActive {
    [ $MONITOR = "HDMI-0" ]
}
function HDMIConnected {
    ! xrandr | grep "^HDMI-0" | grep -q disconnected
}

# actual script
while true
do
        # if ! HDMIActive && ! HDMIConnected 
        # then
        #         ActivateLaptop
        # fi
         
        if ! HDMIActive && HDMIConnected
        then
                ActivateHDMI
        fi

        if HDMIActive && ! HDMIConnected
        then
                DeactivateHDMI
        fi

       sleep 1s
done
