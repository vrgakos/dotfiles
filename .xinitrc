[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xset b off
exec i3
