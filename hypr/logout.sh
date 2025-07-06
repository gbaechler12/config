#!/usr/bin/env bash

zenity --question \
  --title="Logout" \
  --text="Are you sure you want to logout?" \
  --width=300

if [ $? -eq 0 ]; then
  hyprctl dispatch exit
fi

