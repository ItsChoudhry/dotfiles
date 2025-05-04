#!/usr/bin/env bash

# Get battery info from upower
battery_path=$(upower -e | grep 'BAT')
percentage=$(upower -i $battery_path | grep percentage | awk '{print $2}' | tr -d '%')
state=$(upower -i $battery_path | grep state | awk '{print $2}')

# Nerd Font battery icons
icon_full=""   # Full battery
icon_mid=""    # Mid battery
icon_low=""    # Low battery
icon_charging="" # Charging
icon_empty=""  # Empty battery

# Logic for icon selection
if [[ "$state" == "charging" ]]; then
    icon=$icon_charging
elif [[ "$percentage" -ge 95 ]]; then
    icon=$icon_full
elif [[ "$percentage" -ge 60 ]]; then
    icon=$icon_mid
elif [[ "$percentage" -ge 20 ]]; then
    icon=$icon_low
else
    icon=$icon_empty
fi

# Output icon and percentage
echo "$icon $percentage%"
