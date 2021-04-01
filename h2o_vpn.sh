#!/bin/bash

NAME=robin.liu@h2o.ai.vpn
US_VPN_NAME=h2o_vpn

PWD=$(security find-generic-password -ga $NAME 2>&1 >/dev/null | sed -E 's/password: "(.*)"/\1/')

function isnt_connected () {
    VPN_NAME=$1
    scutil --nc status $VPN_NAME | sed -n 1p | grep -qv Connected
}

if isnt_connected $US_VPN_NAME; then
    echo "Connecting to VPN..."
    scutil --nc start $US_VPN_NAME
    sleep 2
    osascript -e "tell application \"System Events\" to keystroke tab"
    sleep 0.1
    osascript -e "tell application \"System Events\" to keystroke \"$PWD\""
    osascript -e "tell application \"System Events\" to keystroke return"
else
    echo "Already Connected to VPN..."
fi
