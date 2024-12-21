#!/bin/bash

hyprctl monitors -j | \
  jq -r '.[] | .name' | \
  tofi --prompt-text "Move current workspace to monitor:" | \
  xargs hyprctl dispatch movecurrentworkspacetomonitor
