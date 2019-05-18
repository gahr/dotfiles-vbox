VBoxClient-all
eval `ssh-agent -s`
xrdb .Xresources
setxkbmap ch fr
exec i3
eval `ssh-agent -k`
