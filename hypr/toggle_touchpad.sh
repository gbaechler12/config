#!/usr/bin/env bash

STATUS_FILE="$HOME/.config/hypr/touchpad_status"

if ! [ -f "$STATUS_FILE" ] ; then
  touch "$STATUS_FILE" && notify-send "Touchpad status file created"
  echo "Disabled" > "$STATUS_FILE"
fi

status=$(<"$STATUS_FILE")
hypr_status=""

# Device ID (change if yours is different)
DEVICE="device[asue140d:00-04f3:31b9-touchpad]:enabled"

if [[ "$status" == "Enabled" ]]; then
  status="Disabled"
  hypr_status="false"
else
  status="Enabled"
  hypr_status="true"
fi

hyprctl keyword "$DEVICE" "$hypr_status" && notify-send "Touchpad" "$status"
echo "$status" > "$STATUS_FILE"
