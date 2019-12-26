# xset fp+ /usr/local/share/fonts/urwfonts
# xset fp+ /usr/local/share/fonts/urwfonts-ttf
# xset fp+ /usr/local/share/fonts/100dpi
# xset fp+ /usr/local/share/fonts/75dpi
# xset fp+ /usr/local/share/fonts/cyrillic
# xset fp+ /usr/local/share/fonts/dejavu
# xset fp+ /usr/local/share/fonts/OTF
# xset fp+ /usr/local/share/fonts/TTF
# xset fp+ /usr/local/share/fonts/Liberation
xset fp rehash

export LC_ALL=en_US.UTF-8
export LC_LANG=en_US.UTF-8

# intel_backlight 60
setxkbmap pl -option ctrl:nocaps
xbattbar -c -a -t 1 top &
conky &
wicd-gtk -t &
volumeicon &
sh ~/bin/batt_notify.sh &
xautolock -time 3 -locker /usr/bin/slock &
exec startfluxbox
