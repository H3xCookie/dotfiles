#!/bin/bash
# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

feh --bg-scale ~/Pictures/susebg.png
setxkbmap -option caps:escape
dwmblocks &
exec dwm
