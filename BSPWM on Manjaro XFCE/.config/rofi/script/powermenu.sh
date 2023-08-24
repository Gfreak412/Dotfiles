#!/bin/bash
 
lock=" Lock"
logout=" Logout"
shutdown="⏻ Poweroff"
reboot=" Reboot"
sleep=" Suspend"
 
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu -i -p "Powermenu" \
		  -theme "~/.config/rofi/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
  betterlockscreen -l dim
elif [ "$selected_option" == "$logout" ]
then
  pkill -u kanishk
elif [ "$selected_option" == "$shutdown" ]
then
  shutdown now
elif [ "$selected_option" == "$reboot" ]
then
  reboot
elif [ "$selected_option" == "$sleep" ]
then
  systemctl suspend
else
  echo "No match"
fi
