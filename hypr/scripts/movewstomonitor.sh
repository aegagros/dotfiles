#!/bin/bash

hyprctl monitors -j | \
  jq -r '.[] | .model+"\t"+.name' | \
  tofi --prompt-text "Move current workspace to monitor:" | \
  cut -f2 | \
  xargs hyprctl dispatch movecurrentworkspacetomonitor
