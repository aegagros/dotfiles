#!/bin/bash

CONTRAST="10.0"
SATURATION="0.65"
IMGPATH=$1

wal --cols16 \
    --saturate ${SATURATION} \
    --contrast ${CONTRAST} \
    -n -i "${IMGPATH}"

swww img "${IMGPATH}"
pkill -SIGUSR2 waybar
