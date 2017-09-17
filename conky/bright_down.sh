#!/bin/bash
# make /sys/class/backlight/intel_backlight/brightness writable
# /etc/rc.local => sudo chmod 777 /sys/class/backlight/intel_backlight/brightness
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ "$brightness" -gt "0" ]; then
  brightness=$(($brightness-100))
  echo "$brightness" | dd of=/sys/class/backlight/intel_backlight/brightness
fi

