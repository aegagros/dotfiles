#!/bin/sh
background=$1
# lock_cmd="swaylock -f -i ${background}"
lock_cmd="pidof hyprlock || hyprlock"
swayidle -w timeout 300 "${lock_cmd}" \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' &
            #\
            #timeout 3600 'systemctl suspend' \
            #before-sleep "${lock_cmd}" &
