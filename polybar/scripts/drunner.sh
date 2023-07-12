#!/bin/sh
case $1 in
    autolaunch)
        #xrandr --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal &
        xset +dpms dpms 0 0 300 > /dev/null &
        xset s off > /dev/null &
        feh --bg-tile /usr/src/$USER/dracula-pro/wallpapers/dracula-pro/desktop-1920x1080.png > /dev/null &
        dunst > /dev/null &
        /usr/lib64/polkit-gnome/polkit-gnome-authentication-agent-1 > /dev/null &
        nm-applet > /dev/null &
        transmission-gtk --minimized > /dev/null &
        ;;
    calendar)
        gnome-calendar > /dev/null
        ;;
    clipboard-manager)
        copyq toggle > /dev/null
        ;;
    downloads)
        thunar ~/Downloads > /dev/null
        ;;
    dunst-clear)
        dunstctl close-all > /dev/null
        ;;
    dunst-pause)
        dunstctl set-paused toggle > /dev/null
        ;;
    dunst-pop)
        dunstctl history-pop > /dev/null
        ;;
    firefox)
        org.mozilla.firefox --new-window > /dev/null
        ;;
    firefox-new-tab)
        org.mozilla.firefox --new-tab about:newtab > /dev/null
        ;;
    firefox-private)
        org.mozilla.firefox --private-window > /dev/null
        ;;
    i3logout)
        i3-nagbar -t warning -m "You pressed the exit shortcut. Do you really want exit i3? This will end your X session" -b "Yes, exit i3" "i3-msg exit" > /dev/null
        ;;
    rofi)
        rofi -combi-modi window,drun -show combi -modi combi > /dev/null
        ;;
    terminal)
        terminator > /dev/null
        ;;
    trash)
        thunar trash\: > /dev/null
        ;;
    *)
        echo -ne "Usage: $0 action --optional-args\n"
        ;;
esac
