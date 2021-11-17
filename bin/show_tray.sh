#!/bin/sh

WINDOWID=$(xdotool search --class stalonetray)

if [ -z $WINDOWID ]
then
    stalonetray &
    echo "Spawned"
    exit 0
fi

WINDOWSTATE=$(xwininfo -id "$WINDOWID" | grep "Map State" | awk '{print $3;}')

if [ $WINDOWSTATE = "IsUnMapped" ]
then
    xdotool windowmap "$WINDOWID"
    echo "Show"
elif [ $WINDOWSTATE = "IsViewable" ]
then
    xdotool windowunmap "$WINDOWID"
    echo "Hide"
fi
