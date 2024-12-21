#!/bin/bash

# grab list of hidden workspaces
LIST=$(hyprctl workspaces -j | jq -r '.[] | .name' | grep "^special" | sed 's/^special://')
# prompt user to select workspace
echo ${LIST} | wofi --dmenu --prompt "Name of stash to toggle" | xargs -I{} hyprctl dispatch togglespecialworkspace {}

