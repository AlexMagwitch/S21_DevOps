#!/bin/bash

get_color_name() {
  case $1 in
    0) echo "black" ;;
    1) echo "red" ;;
    2) echo "green" ;;
    4) echo "blue" ;;
    5) echo "purple" ;;
    7) echo "white" ;;
  esac
}
