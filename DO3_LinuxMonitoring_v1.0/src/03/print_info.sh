#!/bin/bash

print_info() {
  local name=$1
  local value=$2
  echo -e "\033[4${BG_NAME};3${FG_NAME}m${name}\033[0m = \033[4${BG_VALUE};3${FG_VALUE}m${value}\033[0m"
}
