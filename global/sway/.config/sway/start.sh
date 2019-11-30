#!/bin/bash

export _JAVA_AWT_WM_NONREPARENTING=1

# xset dpms 610
# xautolock -time 10 -locker 'i3lock-next "Input Password" "Hurmit Nerd Font Mono" 24'
# exec oneko &
# fluxgui &

# xmodmap ~/.Xmodmap
# bash ~/.screenlayout/1440x900.sh
# redshift -l 30.267153:-97.743057 &
# polybar main &
waybar &
browserpass &
sleep 1
nm-applet &
cbatticon &
blueman-applet &
pulseaudio --start &
/opt/piavpn/bin/pia-client &
terminator &
terminator &
