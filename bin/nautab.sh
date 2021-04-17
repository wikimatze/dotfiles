#!/bin/bash
# inspiration https://askubuntu.com/questions/26042/can-a-single-nautilus-window-be-started-with-multiple-tabs
# Nautilus opens folders in new tabs
# Dependencies: sudo apt-get install wmctrl xclip
# Pass directories as parameters, i.e. nautab /opt /var/log /usr/local/etc
# Wrong parameters will be shown as invalid directories

if [ "$(wmctrl -xl | grep "nautilus\.Nautilus")" == "" ]; then
    # wmctrl reports Nautilus not running
    if [[ -d $1 ]]; then
        nautilus "$1" &
    else
        >&2 echo Not a directory: $1
        nautilus &
    fi
    shift
    # Nautilus takes some time to become responsive to automation
    sleep 2
fi
#Save old clipboard value
oldclip="$(xclip -o -sel clip)"
for folder in "$@"
    {
    if [ -d "$folder" ]; then
        echo -n $folder | xclip -i -sel clip
        wmctrl -xF -R nautilus.Nautilus && xdotool key --delay 120 ctrl+t ctrl+l ctrl+v Return
        # Use this if you suspect funny clipboard behaviour
        #xclip -verbose -o -sel clip
        #Leave some time before opening a new tab
        sleep 0.5
    else
        >&2 echo Not a directory: $folder
    fi
}
#Restore old clipboard value
echo -n "$oldclip" | xclip -i -sel clip
