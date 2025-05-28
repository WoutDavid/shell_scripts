#!/bin/bash

# Check if Bluetooth is turned on
bluetooth_status=$(bluetoothctl show | grep "Powered: yes")

if [ -z "$bluetooth_status" ]; then
    echo "Bluetooth is turned off. Turning it on..."
    bluetoothctl -- power on
    sleep 1
fi

# Check if headphones are already connected
connected_devices=$(bluetoothctl paired-devices)
headphones_mac="38:18:4C:96:66:34"  # Replace with your headphones MAC address

if [[ $connected_devices =~ $headphones_mac ]]; then
    echo "Headphones are already connected."
else
    echo "Connecting to headphones..."
    bluetoothctl -- connect "$headphones_mac"
fi
