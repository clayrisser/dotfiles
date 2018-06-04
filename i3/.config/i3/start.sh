#!/bin/bash

# xset dpms 610
# xautolock -time 10 -locker 'i3lock-next "Input Password" "Hurmit Nerd Font Mono" 24'
# exec oneko &
# fluxgui &

bash ~/.resolutions/1500x1000.sh
compton -f &
polybar main &
sleep 1
nm-applet &
blueman-applet &
terminator &
sleep 1
terminator -e ranger &
bash /opt/Enpass/bin/runenpass.sh &
google-chrome &

