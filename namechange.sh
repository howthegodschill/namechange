#!/bin/sh
# This script will prompt the user for input,
# then quickly change all of the necessary names for a Mac

echo Please enter the user\'s initials followed by their ID number

read computerName

sudo scutil --set HostName $computerName
sudo scutil --set LocalHostName $computerName
sudo scutil --set ComputerName $computerName
dscacheutil -flushcache

echo The computer name is now $computerName
