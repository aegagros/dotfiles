#!/bin/sh
WIFIDEV="$(ip token | grep ' wl' | awk '{print $4}')"
ETHDEV="$(ip token | grep ' en' | awk '{print $4}')"

WANIP="$(curl -s icanhazip.com)"
LANIP="$(ip addr show dev $WIFIDEV | grep 'inet ' | awk '{split($2,a,"/"); print a[1]}')"
if [ -z "$LANIP" ]
then
    LANIP="$(ip addr show dev $ETHDEV | grep 'inet ' | awk '{split($2,a,"/"); print a[1]}')"
fi

if [[ "$WANIP" == "$LANIP" ]]
then
    echo ${WANIP}
else
    echo ${WANIP} → ${LANIP}
fi

