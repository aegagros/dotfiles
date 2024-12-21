#!/usr/bin/env bash

# Get brightness
get_backlight() {
	LIGHT="$(cat /sys/class/leds/*::kbd_backlight/brightness)"
	echo "${LIGHT}"
}

# Notify
notify_user() {
  notify-send -h int:value:${percent} "Backlight"
}

# Increase brightness
inc_backlight() {
	brightnessctl -c backlight s 10%+
}

# Decrease brightness
dec_backlight() {
	brightnessctl -c backlight s 10%-
}

# Execute accordingly
if [[ "$1" == "--inc" ]]; then
	inc_backlight
elif [[ "$1" == "--dec" ]]; then
	dec_backlight
fi

curr=$(brightnessctl -c backlight g)
max=$(brightnessctl -c backlight m)
percent=$(( curr * 100 / max ))

echo $curr : $max : $percent

notify_user
