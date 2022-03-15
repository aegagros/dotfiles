#!/bin/bash
OUTPUT=`xrandr | grep -i " connected" | awk '{ print $1}' | rofi -p "Move workspace to output" -dmenu -no-custom`
i3-msg "move workspace to $OUTPUT"

