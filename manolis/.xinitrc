# start trayer
# trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 5 --height 20 --transparent true --tint 0x000000 &

# set the cursor as pointer
# xsetroot -cursor_name left_ptr

# switch layout
# setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,el

# start xmonad window manager
exec ck-launch-session startxfce4 & wmpid=$!
sleep 1

# start the notification daemon
#/usr/lib/notification-daemon/notification-daemon &
#sleep 1

# start network-manager-applet
#if [ -x /usr/bin/nm-applet ] ; then
#    ck-launch-session nm-applet &
#fi
#wicd-client -t &
#sleep 1

# start the volume applet
#volumeicon &
#sleep 1

#start pacellite
#parcellite & 

#start xscreensaver
xscreensaver -no-splash &

#set background image
sh /home/manolis/.fegbg &

# issue #200 from code.google.com/p/xmonad/issues/detail?id=200
export SAL_USE_VCLPLUGIN=gen

wait $wmpid
