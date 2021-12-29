#!/bin/bash
# This script will prompt the user for input,
# then quickly change all of the necessary names for a Mac

DeviceName=`/usr/bin/osascript << EOT
tell application "System Events"
    activate
    set DeviceName to text returned of (display dialog "Please enter the user's name and ID number" default answer "" with icon 2)
end tell
EOT`

#Set New Computer Name
echo $DeviceName
scutil --set HostName $DeviceName
scutil --set LocalHostName $DeviceName
scutil --set DeviceName $DeviceName

/usr/bin/osascript -e \
'tell application "System Events" to (display dialog "Name change successful!" buttons {"OK"} default button "OK" with icon 2)'

exit 0
