#!/bin/sh

echo Please enter the user\'s initials followed by their ID number

read computerName

sudo scutil --set HostName $computerName
sudo scutil --set LocalHostName $computerName
sudo scutil --set ComputerName $computerName

echo The computer name is now $computerName
