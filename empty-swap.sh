#!/bin/bash

sudo swapoff -a 
sleep 3
sudo swapon -a

echo "Swap clearing finished"
