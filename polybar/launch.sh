#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar example
#polybar example &
MONITOR=LVDS1 polybar example &
MONITOR=HDMI1 polybar example &
echo "Bars launched..."

