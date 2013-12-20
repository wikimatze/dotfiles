# xubuntu 13.10 sound fixes
sudo nano /usr/share/dbus-1/services/indicator-sound.service

#And in that file, comment out the line that starts with "Exec=" (to comment out means to put a "#" in front of the line) and under that line, paste this:

Exec=/bin/sh -c 'if [ -n "$(ps -U $USER | grep xfce4-panel)" ]; then /usr/lib/indicator-sound-gtk2/indicator-sound-service;else /usr/lib/$(arch)-linux-gnu/indicator-sound/indicator-sound-service;fi'
