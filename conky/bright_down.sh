#!/bin/bash
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ "$brightness" -gt "0" ]; then
  brightness=$(($brightness-100))
  echo "$brightness" | dd of=/sys/class/backlight/intel_backlight/brightness
fi

