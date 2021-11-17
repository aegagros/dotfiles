#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2

bar_idx=1
xrandr --listactivemonitors | grep "^ [0-9]\+:" | awk '{ print $4; }' | while read -r line ; do
    if [ $bar_idx -eq 1 ]; then
        MONITOR=$line polybar -r main &
        MONITOR=$line polybar -r main-bottom &
    else
        MONITOR=$line polybar -r secondary &
    fi
    bar_idx=$((bar_idx+1))
done

echo "Bars launched..."

