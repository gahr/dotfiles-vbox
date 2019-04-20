eval `ssh-agent -s`
xrdb .Xresources
setxkbmap ch fr
xrandr --size 1280x800
exec i3
eval `ssh-agent -k`
