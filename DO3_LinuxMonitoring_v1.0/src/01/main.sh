#!/bin/bash

source "$(dirname "$0")/validate_param.sh"

validate_arg_count "$@"
validate_arg_is_number "$1"


echo "Your parametr is: "$1""
exit 0
