#!/bin/bash

source "$(dirname "$0")/colors_name.sh"
source "$(dirname "$0")/validate_input.sh"
source "$(dirname "$0")/../03/colors.sh"
source "$(dirname "$0")/../03/print_info.sh"
source "$(dirname "$0")/../02/system_info.sh"

CONF_FILE="$(dirname "$0")/colors.conf"

DEFAULT_BG1=6
DEFAULT_FG1=1
DEFAULT_BG2=2
DEFAULT_FG2=4

if [[ -f "$CONF_FILE" ]]; then
  source "$CONF_FILE"
fi

BG_NAME=$(get_color ${column1_background:-$DEFAULT_BG1})
FG_NAME=$(get_color ${column1_font_color:-$DEFAULT_FG1})
BG_VALUE=$(get_color ${column2_background:-$DEFAULT_BG2})
FG_VALUE=$(get_color ${column2_font_color:-$DEFAULT_FG2})

validate_input
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

get_color_name

echo ""
echo "Column 1 background = ${column1_background:-default} ($(get_color_name "$BG_NAME"))"
echo "Column 1 font color = ${column1_font_color:-default} ($(get_color_name "$FG_NAME"))"
echo "Column 2 background = ${column2_background:-default} ($(get_color_name "$BG_VALUE"))"
echo "Column 2 font color = ${column2_font_color:-default} ($(get_color_name "$FG_VALUE"))"

exit 0
