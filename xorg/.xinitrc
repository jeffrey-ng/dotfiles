#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
      for f in /etc/X11/xinit/xinitrc.d/*; do
              [ -x "$f" ] && . "$f"
                done
                  unset f
                  fi
#
source ~/.profile

xrdb -cpp cpp $HOME/.Xresources &
# exec gnome-session
# exec startkde
# exec startxfce4
# exec wmaker
# exec icewm
# exec blackbox
# exec fluxbox
# exec openbox-session
# exec cinnamon-session
# ...or the Window Manager of your choice
#exec xterm
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
exec bspwm -c $HOME/.config/bspwm/bspwmrc
