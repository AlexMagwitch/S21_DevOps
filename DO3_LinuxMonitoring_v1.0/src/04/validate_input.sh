#!/bin/bash

validate_input() {
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
