#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

# Setup xfce4 startup
echo -e "\n------------------ startup of Xfce4 window manager ------------------"

### disable screensaver and power management
xset -dpms &
xset s noblank &
xset s off &

sleep 1
