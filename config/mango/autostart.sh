#!/bin/sh
pipewire &
pipewire-pulse &
wireplumber &
swaybg -i ~/Home/walls/wall2.jpg -m fill &
waybar &
/usr/libexec/xdg-desktop-portal-wlr &
sleep 1
/usr/libexec/xdg-desktop-portal &
