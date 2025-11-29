#!/bin/bash

source "$(dirname "$0")/utils.sh"
source "$(dirname "$0")/stats.sh"
source "$(dirname "$0")/output.sh"

start_timer

directory_check "$1"
DIR=$1

collect_stats "$DIR"

display_output

end_timer
print_exec_time

exit 0
