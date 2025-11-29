#!/bin/bash

source "$(dirname "$0")/colors.sh"
source "$(dirname "$0")/validate_input.sh"
source "$(dirname "$0")/../02/system_info.sh"
source "$(dirname "$0")/print_info.sh"

validate_input "$@"
get_system_info

print_info "HOSTNAME" "$HOSTNAME"
print_info "TIMEZONE" "$TIMEZONE"
print_info "USER" "$USER"
print_info "OS" "$OS"
print_info "DATE" "$DATE"
print_info "UPTIME" "$UPTIME"
print_info "UPTIME_SEC" "$UPTIME_SEC"
print_info "IP" "$IP"
print_info "MASK" "$MASK"
print_info "GATEWAY" "$GATEWAY"
print_info "RAM_TOTAL" "$RAM_TOTAL"
print_info "RAM_USED" "$RAM_USED"
print_info "RAM_FREE" "$RAM_FREE"
print_info "SPACE_ROOT" "$SPACE_ROOT"
print_info "SPACE_ROOT_USED" "$SPACE_ROOT_USED"
print_info "SPACE_ROOT_FREE" "$SPACE_ROOT_FREE"

exit 0
