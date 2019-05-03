#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

xset +fp /home/kevin/.fonts
xset fp rehash
xrdb -merge ~/.Xresources
