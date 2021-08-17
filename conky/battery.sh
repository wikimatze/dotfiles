#!/bin/bash
if [ `acpi | grep -c Charging` -eq 1 ]; then
  CHARGE='▲'
  NUMBER="`acpi | grep -P -o '(\d{1,2}%)'`"
  NUMBER="$NUMBER charging: `acpi | grep Charging | grep -o -P '(\d{2}:\d{2})'`"
elif [ `acpi | grep -c 'Full, 0%'` ]; then
  CHARGE="⚡"
  NUMBER="AC"
elif [ `acpi | grep -c Discharging` -eq 1 ]; then
  CHARGE='▼'
  NUMBER="`acpi | grep -P -o '(\d{1,2}%)'`"
else
  CHARGE="⚡"
  NUMBER="AC"
fi

echo "$CHARGE $NUMBER"
