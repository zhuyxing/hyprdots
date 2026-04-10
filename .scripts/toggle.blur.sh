#!/bin/bash

# Extract the integer value (1 for enabled, 0 for disabled)
STATUS=$(hyprctl getoption decoration:blur:enabled -j | jq '.int')

if [ "$STATUS" -eq 1 ]; then
    hyprctl keyword decoration:blur:enabled 0
    notify-send -h string:x-canonical-private-synchronous:blur-notify -u low -i dialog-information "Hyprland" "Blur Disabled"
else
    hyprctl keyword decoration:blur:enabled 1
    notify-send -h string:x-canonical-private-synchronous:blur-notify -u low -i dialog-information "Hyprland" "Blur Enabled"
fi
