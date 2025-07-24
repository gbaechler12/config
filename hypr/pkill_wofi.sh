#!/usr/bin/env bash

# Get list of running processes (excluding header, current script, and duplicates)
processes=$(ps -eo comm | tail -n +2 | sort | uniq)

# Let user pick a process name using wofi
chosen=$(echo "$processes" | wofi --conf ~/.config/wofi/config --style ~/.config/wofi/knuckles_themes/zen_dark.css --dmenu --prompt "Kill process:")

# If user selected a process, kill all instances
if [ -n "$chosen" ]; then
    pkill "$chosen" && notify-send "Killed: $chosen" || notify-send "Failed to kill: $chosen"
fi
