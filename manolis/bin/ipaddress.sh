#!/bin/sh

# if there is an openvpn connection available, display its ip address
tun=`ifconfig -s | grep tun0`
if [ "$tun" ]
then
    tip=`ifconfig tun0 | grep 'inet addr' | awk '{ print $2 }' | cut -d ':' -f 2`
    echo tun: $tip
    exit 0
fi     

wip=`ifconfig wlan0 | grep 'inet addr' | awk '{ print $2 }' | cut -d ':' -f 2`
lip=`ifconfig eth0 | grep 'inet addr' | awk '{ print $2 }' | cut -d ':' -f 2`

if [ "$wip" ]
then
    echo wlan0: $wip
elif [ "$lip" ]
then
    echo eth0: $lip
else
    echo no interface
fi
