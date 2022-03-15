#!/bin/bash
WORKSPACE=`cat ~/.config/i3/desktops | rofi -p "Move window to workspace" -dmenu -columns 3 -lines 4`
i3-msg "move window to workspace $WORKSPACE; workspace $WORKSPACE"

