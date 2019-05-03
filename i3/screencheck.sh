#!/bin/bash

# First argument: Primary monitor
# Second argument: Secondary monitor
echo $1 $2
if  xrandr | grep "$2 connected"; then
    echo "THIS IS MULTI"
    xrandr --output HDMI-1 --off --output DP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output eDP-1 --off --output HDMI-2 --mode 3840x2160 --pos 3840x0 --rotate normal
else
    echo "THIS IS LAPTOP"
    xrandr --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 3200x1800 --pos 0x0 --rotate normal --output HDMI-2 --off
fi
