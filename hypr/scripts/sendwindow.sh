#!/bin/bash

# grab list of hidden workspaces
LIST=$(hyprctl workspaces -j | jq -r '.[] | .name' | grep "^special" | sed 's/^special://')
# prompt user to select workspace and send window to special workspace
echo ${LIST} | wofi --dmenu --prompt "Name of stash to send window to (can be empty)" | xargs -I{} hyprctl dispatch movetoworkspacesilent special:{}

