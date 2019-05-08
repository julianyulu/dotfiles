#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Set display
export MONITOR=$($HOME/.config/scripts/get_display.sh secondary)

# Launch bar1 and bar2
#polybar archi3 &


if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload archi3 &
  done
else
  polybar --reload archi3 &
fi
