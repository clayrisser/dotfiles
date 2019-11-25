#!/bin/bash

bash ~/.active_screenlayout
sleep 1

# START SERVICES
# compton -f --config ~/.config/compton.conf &
# xset dpms 610
# xautolock -time 10 -locker 'i3lock-next "Input Password" "Hurmit Nerd Font Mono" 24'
# fluxgui &
# xmodmap ~/.Xmodmap
feh --bg-scale ~/.background.jpg &
browserpass &
redshift -l 30.267153:-97.743057 &
i3-msg restart &

# START PROGRAMS
# exec oneko &
sleep 1
polybar main &
/opt/piavpn/bin/pia-client &
blueman-applet &
cbatticon &
nm-applet &
pulseaudio --start &
terminator &
terminator &
