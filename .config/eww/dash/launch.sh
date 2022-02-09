#bin/sh

file=/tmp/ewwdash

if [ ! -f "$file" ]; then
    touch $file
    sh ~/.config/eww/scripts/weather
    eww -c ~/.config/eww/dash/ open-many bgblur profile monitors time system music directory power weather shortcuts search update speedmeter adblock
#     eww -c ~/.config/eww/dash/ open-many profile monitors time system music directory power weather quote search update speedmeter adblock
else 
    rm $file
   eww -c ~/.config/eww/dash/  close bgblur profile monitors time system music directory power weather shortcuts search update speedmeter adblock
#     eww -c ~/.config/eww/dash/  close profile monitors time system music directory power weather quote search update speedmeter adblock

fi
