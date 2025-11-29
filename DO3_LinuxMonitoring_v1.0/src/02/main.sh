#!/bin/bash

source "$(dirname "$0")/system_info.sh"
source "$(dirname "$0")/print_info.sh"
source "$(dirname "$0")/save_info.sh"

get_system_info
print_system_info
save_system_info

exit 0
