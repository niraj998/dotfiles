#bin/sh

file=/tmp/ewwdash
configdir=~/.config/eww/dash


case $1 in
  update)
    eww -c $configdir reload
    ;;
    *)

if [ ! -f "$file" ]; then
    touch $file
    sh ~/.config/eww/scripts/weather
#    eww -c $configdir open-many bgblur profile monitors time system music directory power weather shortcuts search update speedmeter adblock
     eww -c $configdir open-many profile monitors time system music directory power weather search update speedmeter adblock shortcuts
else 
    rm $file
#   eww -c $configdir close bgblur profile monitors time system music directory power weather shortcuts search update speedmeter adblock
#      eww -c $configdir close profile monitors time system music directory power weather search update speedmeter adblock shortcuts
    eww -c $configdir kill

fi
  ;;
esac
