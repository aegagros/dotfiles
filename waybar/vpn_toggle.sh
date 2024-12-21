#!/bin/bash

if nmcli c show --active | grep -i vpn &>/dev/null; then
    nmcli con down VPN
    pkill -SIGUSR2 waybar
else
    nmcli con up VPN
fi

