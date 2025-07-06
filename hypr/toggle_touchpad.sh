#!/usr/bin/env bash

DEVICE="touchpad"

STATE=$(hyprctl devices | grep -A10 "$DEVICE" | grep "enabled" | awk '{print $2}')
if [ "$STATE" = "true" ]; then
    hyprctl keyword device:$DEVICE enabled false
else
    hyprctl keyword device:$DEVICE enabled true
fi

