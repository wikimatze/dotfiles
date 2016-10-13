#!/bin/bash
# Details see http://askubuntu.com/a/785864

# Check if Xfce4 Terminal is running. If it is not, exit.
status=$(pgrep xfce4-terminal)

if [ -z "$status" ]; then
    notify-send "No Xfce4 Terminal session is open."
    exit 1
fi

# 1. Get the full line. 2. Get the entire line minus font size. 3. Get only font size.
line=$(grep "FontName" ~/.config/xfce4/terminal/terminalrc)
font_name=$(echo "$line" | sed s/'\w*$'//)
font_size=$(echo "$line" | grep -oE '[^ ]+$')

# Increase or decrease font size. You might want to change this to increase and decrease by two.
if [ "$1" = "+" ]; then
    new_size=$((font_size + 1))
elif [ "$1" = "-" ]; then
    new_size=$((font_size - 1))
else
    echo "Available options: +, -"
    exit 1
fi

# Replace the line with the new font size.
action='s/'$font_name$font_size'/'$font_name$new_size'/'
sed -i "$action" ~/.config/xfce4/terminal/terminalrc

