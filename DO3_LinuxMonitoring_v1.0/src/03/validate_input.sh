#!/bin/bash

validate_input() {
  if [ $# -ne 4 ]; then
    echo "Error: You must provide exactly 4 numeric parameters (1-6)."
    exit 1
  fi

  BG_NAME=$(get_color $1)
  FG_NAME=$(get_color $2)
  BG_VALUE=$(get_color $3)
  FG_VALUE=$(get_color $4)

  if [[ -z $BG_NAME || -z $FG_NAME || -z $BG_VALUE || -z $FG_VALUE ]]; then
    echo "Error: Parameters must be numeric values between 1 and 6."
    exit 1
  fi

  if [[ $BG_NAME == $FG_NAME ]]; then
    echo "Error: Background and font color for value names must not match."
    exit 1
  elif [[ $BG_VALUE == $FG_VALUE ]]; then
    echo "Error: Background and font color for values must not match."
    exit 1
  fi
}
