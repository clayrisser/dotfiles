#!/bin/bash

# xset dpms 610
# xautolock -time 10 -locker 'i3lock-next "Input Password" "Hurmit Nerd Font Mono" 24'
# exec oneko &
# fluxgui &

# xmodmap ~/.Xmodmap
bash ~/.screenlayout/1440x900.sh
compton -f --config ~/.config/compton.conf &
redshift -l 30.267153:-97.743057 &
polybar main &
browserpass &
sleep 1
nm-applet &
cbatticon &
blueman-applet &
pulseaudio --start &
/opt/piavpn/bin/pia-client &
terminator &
sleep 1
terminator -e ranger &
bash /opt/enpass/Enpass &
google-chrome &
