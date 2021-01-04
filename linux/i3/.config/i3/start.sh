#!/bin/bash

sleep 2
bash ~/.active_resolution.sh
sleep 1

# START SERVICES
# compton -f --config ~/.config/compton.conf &
# xset dpms 610
# xautolock -time 10 -locker 'i3lock-next "Input Password" "Hurmit Nerd Font Mono" 24'
# fluxgui &
# xmodmap ~/.Xmodmap
feh --bg-scale ~/.background.jpg &
browserpass &
xrandr --output eDP-1 --brightness .4
# redshift -l 30.267153:-97.743057 &
i3-msg restart &
bluetoothctl &

# START PROGRAMS
# exec oneko &
sleep 1
polybar main &
/opt/piavpn/bin/pia-client &
blueman-applet &
mate-power-manager &
nm-applet &
terminator &
terminator &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pulseaudio --kill && pulseaudio --start &
xrandr --output eDP-1 --brightness .8
