#!/bin/sh

# Script to output hourly internet usage in all interface. [wlan0] and [tailscale0] can be changed as per your interface needs.
# Interfaces could be found using command [ifconfig].

# Clear the Screen 
clear

#Divider
echo "#######################################################################################"

# Heading: Hourly Traffic - Total
echo "Hourly Traffic: Total"
vnstat -h -i wlan0+tailscale0
echo ""

echo "#######################################################################################" 