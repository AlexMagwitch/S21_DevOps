#!/bin/bash

save_system_info() {
    read -p "Do you want to save this information to a file? (Y/N): " answer
    if [[ $answer == Y || $answer == y ]]; then
        filename=$(date "+%d_%m_%y_%H_%M_%S.status")

        echo "HOSTNAME = $HOSTNAME" > "$filename"
        echo "TIMEZONE = $TIMEZONE" >> "$filename"
        echo "USER = $USER" >> "$filename"
        echo "OS = $OS" >> "$filename"
        echo "DATE = $DATE" >> "$filename"
        echo "UPTIME = $UPTIME" >> "$filename"
        echo "UPTIME_SEC = $UPTIME_SEC" >> "$filename"
        echo "IP = $IP" >> "$filename"
        echo "MASK = $MASK" >> "$filename"
        echo "GATEWAY = $GATEWAY" >> "$filename"
        echo "RAM_TOTAL = $RAM_TOTAL" >> "$filename"
        echo "RAM_USED = $RAM_USED" >> "$filename"
        echo "RAM_FREE = $RAM_FREE" >> "$filename"
        echo "SPACE_ROOT = $SPACE_ROOT" >> "$filename"
        echo "SPACE_ROOT_USED = $SPACE_ROOT_USED" >> "$filename"
        echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE" >> "$filename"

        echo "Information saved to $filename"
    else
        echo "Information not saved"
    fi
}
