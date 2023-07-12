#!/bin/sh

# Colors
alpha="dd"
background="#282a36"
selection="#44475a"
comment="#6272a4"
# +
yellow="#f1fa8c"
orange="#ffb86c"
red="#ff5555"
magenta="#ff79c6"
blue="#6272a4"
cyan="#8be9fd"
green="50fa7b"

defFont="JetBrainsMono"

revert() {
    xset dpms 0 0 0
}

activate() {
    #xset +dpms dpms 0 0 15
    sleep 30s
    xset dpms force off
}

#trap revert HUP INT TERM

#activate

i3lock -u -c 282a36 -p default --nofork &

activate
