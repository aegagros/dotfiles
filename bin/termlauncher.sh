#!/bin/bash
EXEC="WINIT_X11_SCALE_FACTOR=1 alacritty --class termlauncher,termlauncher"

if [ $1 = "-s" ]
then
    shift
    FONTSIZE=$1
    COLS=$2
    ROWS=$3
    shift 3
    CMD="$*"
    EXEC="$EXEC --option 'window.dimensions.columns=$COLS' --option 'window.dimensions.lines=$ROWS' --option font.size=$FONTSIZE -e $CMD"
else
    CMD="$*"
    EXEC="$EXEC -e $CMD"
fi

#WINIT_X11_SCALE_FACTOR=1 alacritty \
#    --class termlauncher,termlauncher \
#    --option "window.dimensions.columns=180" \
#    --option "window.dimensions.lines=20" \
#    --option font.size="$FONTSIZE" \
#    -e $CMD

echo "$EXEC"
eval $EXEC
