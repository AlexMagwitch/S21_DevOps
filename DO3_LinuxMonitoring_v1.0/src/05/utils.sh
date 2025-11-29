#!/bin/bash

start_timer() {
  START_TIME=$(date +%s.%N)
}

end_timer() {
  END_TIME=$(date +%s.%N)
  EXEC_TIME=$(echo "$END_TIME - $START_TIME" | bc)
  printf -v EXEC_TIME "%.9f" "$EXEC_TIME"
}

print_exec_time() {
  echo "Script execution time (in seconds) = $EXEC_TIME"
}

directory_check() {
  if [[ $# -ne 1 || ! -d "$1" ]]; then
    echo "Usage: <path_to_dir/>"
    exit 1
  fi
}
