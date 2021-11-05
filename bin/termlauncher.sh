#!/bin/bash
WINIT_X11_SCALE_FACTOR=1 alacritty \
    --class termlauncher,termlauncher \
    --option "window.dimensions.columns=180" \
    --option "window.dimensions.lines=20" \
    --option font.size=9.5 \
    -e $1

