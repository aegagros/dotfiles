#!/bin/sh

swaymsg -r -t get_inputs | jq --unbuffered \
                              --compact-output \
                              ".[] | \
                              select(.identifier==\"1:1:AT_Translated_Set_2_keyboard\") | \
                              {\"text\" : .xkb_active_layout_name, \"class\": \"keyboard-layout\", \"tooltip\": .xkb_active_layout_name}"

