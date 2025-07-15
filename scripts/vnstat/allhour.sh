#!/bin/sh

# This is a basic  script that shows hourly internet usage by a interface named [wlan0] (which can be changed as user's requirement).

# Clear the Screen 
clear

#Divider
echo "#######################################################################################"

# Heading: Hourly Traffic - wlan0
echo "Hourly Traffic: wlan0"
vnstat -h -i wlan0
echo ""

echo "#######################################################################################" 