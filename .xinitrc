setxkbmap "us,ru" ",winkeys" "grp:alt_shift_toggle" &
xsetroot -cursor_name left_ptr &
xcalib -d :0 /usr/share/color/icc/colord/NV156FHM_N61.icm &
picom -b &
hsetroot -solid "#073642" &
xrdb .Xresources
exec dwm
