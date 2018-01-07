#!/bin/sh

LOGOFF='Log off'
RESTART='Restart'
SHUTDOWN='Shutdown'

OUTPUT=$(echo -e "$LOGOFF\n$RESTART\n$SHUTDOWN" | rofi -dmenu -p "Select action" -lines 3 -width 40 -bw 0 -fullscreen -padding 400)

if [ "$OUTPUT" = "$LOGOFF" ]; then
    i3-msg exit
elif [ "$OUTPUT" = "$RESTART" ]; then
    systemctl reboot
elif [ "$OUTPUT" = "$SHUTDOWN" ]; then
    systemctl poweroff
fi



