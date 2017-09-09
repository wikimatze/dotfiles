#!/bin/bash
max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ "$brightness" -lt "$max_brightness" ]; then
  brightness=$(($brightness+100))
  echo "$brightness" | dd of=/sys/class/backlight/intel_backlight/brightness
fi

