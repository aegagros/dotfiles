#!/bin/bash

LAYOUT=$(kanshictl status)
notify-send -i 'video-display' \
    -a "Kanshi" \
    "${LAYOUT}"
