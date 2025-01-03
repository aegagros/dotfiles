#!/bin/bash

IMGPATH=$1

wal --cols16 -n -i "${IMGPATH}"
swww img "${IMGPATH}"
pkill -SIGUSR2 waybar
