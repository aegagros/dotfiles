#!/bin/bash

hyprctl clients -j | \
  jq -r '.[] | select(.mapped and .workspace.id >= 0) | .address+" " +.initialTitle+" | "+.title' | \
  fzf --with-nth 2.. | \
  awk '{ print $1; }' | \
  xargs -I{} hyprctl dispatch focuswindow address:{}

