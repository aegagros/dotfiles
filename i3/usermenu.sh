#!/bin/sh

LOGOFF='Log off'
RESTART='Restart'
SHUTDOWN='Shutdown'

OUTPUT=$(echo -e "$LOGOFF\n$RESTART\n$SHUTDOWN" | rofi -dmenu -p "Select action" -lines 1 -columns 3)

if [ "$OUTPUT" = "$LOGOFF" ]; then
    i3-msg exit
elif [ "$OUTPUT" = "$RESTART" ]; then
    systemctl reboot
elif [ "$OUTPUT" = "$SHUTDOWN" ]; then
    systemctl poweroff
fi



