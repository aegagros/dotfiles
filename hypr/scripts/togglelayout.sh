#!/bin/bash

curr_layout=$(hyprctl getoption general:layout -j | jq -r '.str')

if [[ "${curr_layout}" == "dwindle" ]]; then
  notify-send "Switched to MASTER layout"
  hyprctl keyword general:layout "master"
else
  notify-send "Switched to DWINDLE layout"
  hyprctl keyword general:layout "dwindle"
fi

