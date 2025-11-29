#!/bin/bash

get_color() {
  case $1 in
    1) echo "7" ;;
    2) echo "1" ;;
    3) echo "2" ;;
    4) echo "4" ;;
    5) echo "5" ;;
    6) echo "0" ;;
    *) echo "" ;;
  esac
}
