#!/bin/bash

# xset dpms 610
# xautolock -time 10 -locker 'i3lock-next "Input Password" "Hurmit Nerd Font Mono" 24'
# exec oneko &
# fluxgui &

# xmodmap ~/.Xmodmap
bash ~/.screenlayout/1440x900.sh
compton -f &
polybar main &
sleep 1
nm-applet &
cbatticon &
blueman-applet &
terminator &
sleep 1
terminator -e ranger &
bash /opt/enpass/Enpass &
google-chrome &
