#!/bin/bash
# This script will prompt the user for input,
# then quickly change all of the necessary names for a Mac

ComputerName=`/usr/bin/osascript << EOT
tell application "System Events"
    activate
    set ComputerName to text returned of (display dialog "Please enter the user's name and ID number" default answer "" with icon 2)
end tell
EOT`

#Set New Computer Name
echo $ComputerName
scutil --set HostName $ComputerName
scutil --set LocalHostName $ComputerName
scutil --set ComputerName $ComputerName

/usr/bin/osascript -e \
'tell application "System Events" to (display dialog "Name change successful!" buttons {"OK"} default button "OK" with icon 2)'

exit 0
