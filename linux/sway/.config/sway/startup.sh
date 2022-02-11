#!/bin/sh

/usr/bin/xsettingsd &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
/usr/libexec/xdg-desktop-portal -r &
