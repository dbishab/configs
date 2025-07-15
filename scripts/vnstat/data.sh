#!/bin/sh

# Basic vnstat script tile to show monthly, daily and hourly internet usage of individual and combined interfaces.
# There might be multiple interfaces in the system which can be found using the command [ifconfig] and replacing the interface names below.
# 

# Clear the Screen 
clear

# Monthly Data Stat of interfaces
#Divider
echo "#######################################################################################"
echo ""
echo "Monthly Data Stats"
echo ""
# Heading: Monthly Traffic Summary
echo "Monthly Traffic Summary: TailScale"
vnstat -m tailscale0
echo ""

# Heading: Monthly Traffic Summary
echo "Monthly Traffic Summary: Internet"
vnstat -m wlan0
echo ""

# Heading: Monthly Total Traffic Summary of all interfaces
# keep adding all the interfaces below
echo "Monthly Traffic Summary: Internet"
vnstat -m wlan0+tailscale0
echo ""

# Daily Data Stat of interfaces
#Divider
echo "#######################################################################################"
echo ""
echo "Daily Data Stats"
echo ""
# Heading: Daily Traffic Summary
echo "Daily Traffic Summary: TailScale"
vnstat -d tailscale0
echo ""

# Heading: Daily Traffic Summary
echo "Daily Traffic Summary: Internet"
vnstat -d wlan0
echo ""

# Heading: Daily Total Traffic Summary
echo "Daily Traffic Summary: Internet"
vnstat -d wlan0+tailscale0
echo ""


echo "#######################################################################################"
echo ""
echo "Daily Data Stats"
# This is a node to another script that is below. It generally divides individual interfaces into seperate instances which is to be aliased in either .bashrc or .zshrc.
echo "Use command [h] for total interface's hourly datasheet, [th] for tailscale's hourly datasheet and [nh] for internet's hourly datasheet."
echo ""

# Heading: Hourly Traffic - wlan0
 echo "Hourly Traffic: tailscale0"
 vnstat -h -i tailscale0
 echo ""

# Heading: Hourly Traffic - wlan0
 echo "Hourly Traffic: wlan0"
 vnstat -h -i wlan0
 echo ""

echo "#######################################################################################"
echo "" 