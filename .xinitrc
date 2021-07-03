setxkbmap "us,ru" ",winkeys" "grp:alt_shift_toggle" &
xsetroot -cursor_name left_ptr &
xcalib -d :0 /usr/share/color/icc/colord/NV156FHM_N61.icm &
picom -b &
hsetroot -solid "#073642" &
luastatus -b dwm -B separator=' ' ~/.local/share/luastatus/xkb.lua \
                                                  ~/.local/share/luastatus/alsa.lua \
                                                  ~/.local/share/luastatus/battery.lua \
                                                  ~/.local/share/luastatus/backlight.lua \
                                                  ~/.local/share/luastatus/time-date.lua &
xrdb .Xresources
exec dwm
