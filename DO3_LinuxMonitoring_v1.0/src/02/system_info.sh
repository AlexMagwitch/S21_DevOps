#!/bin/bash

get_system_info() {
    HOSTNAME=$(hostname)
    TIMEZONE="$(cat /etc/timezone) UTC $(date +"%:::z")"
    USER=$(whoami)
    OS=$(cat /etc/issue | awk '{printf $1" "$2}')
    DATE=$(date +"%d %B %Y %T")
    UPTIME=$(uptime -p)
    UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
    IP=$(ifconfig | grep -e "inet" | awk '{print($2)}' | head -1)
    MASK=$(ifconfig | grep -e "inet" | awk '{print($4)}' | head -1)
    GATEWAY=$(ip r | grep -e "default" | awk '{print $3}' | head -1)
    RAM_TOTAL=$(free -mt | grep "Mem" | awk '{printf "%.3f GB", $2/1024}')
    RAM_USED=$(free -mt | grep "Mem" | awk '{printf "%.3f GB", $3/1024}')
    RAM_FREE=$(free -mt | grep "Mem" | awk '{printf "%.3f GB", $4/1024}')
    SPACE_ROOT=$(df / | grep "/" | awk '{printf "%.2f MB", $2/1024}')
    SPACE_ROOT_USED=$(df / | grep "/" | awk '{printf "%.2f MB", $3/1024}')
    SPACE_ROOT_FREE=$(df / | grep "/" | awk '{printf "%.2f MB", $4/1024}')
}
