#!/bin/bash

collect_stats() {
  DIR="$1"
  TOTAL_FOLDERS=$(find "$DIR" -type d | wc -l)
  TOP_FOLDERS=$(du -h "$DIR" 2>/dev/null | sort -hr | head -5 | awk '{print NR " - " $2 ", " $1}')
  TOTAL_FILES=$(find "$DIR" -type f | wc -l)
  CONF_FILES=$(find "$DIR" -type f -name "*.conf" | wc -l)
  TEXT_FILES=$(find "$DIR" -type f -name "*.txt" | wc -l)
  EXEC_FILES=$(find "$DIR" -type f -executable | wc -l)
  LOG_FILES=$(find "$DIR" -type f -name "*.log" | wc -l)
  ARCH_FILES=$(find "$DIR" -type f \( -name "*.tar" -o -name "*.gz" -o -name "*.zip" \) | wc -l)
  SYMLINKS=$(find "$DIR" -type l | wc -l)
  TOP_FILES=$(find "$DIR" -type f -printf "%s %p\n" 2>/dev/null | sort -nr | head -n 10 | nl -w2 -s' ' | while read num size file; do
      ext="${file##*.}"
      [[ "$file" == "$ext" ]] && ext="none"
      echo "$num - $file, $(numfmt --to=iec $size), $ext"
  done)
  TOP_EXEC_FILES=$(find "$DIR" -type f -executable -printf "%s %p\n" 2>/dev/null | sort -nr | head -10 | nl -w2 -s' ' | while read num size file; do
      md5=$(md5sum "$file" | awk '{print $1}')
      echo "$num - $file, $size bytes, $md5"
  done)
}
