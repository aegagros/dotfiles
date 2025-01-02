#!/bin/bash

if nmcli c show --active | grep -i vpn &>/dev/null; then
    nmcli con down VPN
    pkill -SIGUSR2 waybar
else
    ~/.local/bin/overlaytui.sh nmcli con up VPN --ask
fi

