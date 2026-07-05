# .bash_profile
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export PATH="$HOME/.local/bin:$PATH"
export LANG=en_US.utf8
export LC_ALL=en_US.utf8
export XCURSOR_THEME=aosp-cursors
export XCURSOR_SIZE=24

if [ -z "$WAYLAND_DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    eval $(dbus-launch --sh-syntax)
    exec mango
fi
