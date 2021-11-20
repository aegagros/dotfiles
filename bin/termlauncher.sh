#!/bin/bash
EXEC="WINIT_X11_SCALE_FACTOR=1 alacritty --class termlauncher,termlauncher"

if [ $# -gt 1 ]
then
    FONTSIZE=$1
    COLS=$2
    ROWS=$3
    CMD=$4
    EXEC="$EXEC --option 'window.dimensions.columns=$COLS' --option 'window.dimensions.lines=$ROWS' --option font.size=$FONTSIZE -e $CMD"
else
    EXEC="$EXEC -e $1"
fi

#WINIT_X11_SCALE_FACTOR=1 alacritty \
#    --class termlauncher,termlauncher \
#    --option "window.dimensions.columns=180" \
#    --option "window.dimensions.lines=20" \
#    --option font.size="$FONTSIZE" \
#    -e $CMD

eval $EXEC
