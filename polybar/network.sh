#!/bin/bash

TYPE=$1
CONNECTIONS=$(nmcli -g name,type connection show --active)
ICONS=""
INFO=""

for con in ${CONNECTIONS}; do
    name=$(echo $con | awk -F ":" '{ print $1; }')
    type=$(echo $con | awk -F ":" '{ print $2; }')
    icon=""
    if [[ $type =~ ethernet || $type =~ eth ]]; then
        icon="eth"
    elif [[ $type =~ wireless || $type =~ wifi ]]; then
        icon="wifi"
    elif [[ $type =~ tunnel || $type =~ tun ]]; then
        icon="tun"
    fi
    address=$(nmcli -g ip4.address connection show ${name} | xargs)
    if [[ ! -z ${icon} ]]; then
        ICONS="${ICONS} ${icon}"
        INFO="${INFO}${icon} ${address}\n"
    fi
done

if [[ $1 = "icons" ]]; then
    echo "${ICONS}"
else 
    echo -e "${INFO}"
fi
