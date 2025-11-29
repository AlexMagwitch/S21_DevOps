#!/bin/bash

display_output() {
  echo "Total number of folders (including all nested ones) = $TOTAL_FOLDERS"
  echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
  echo "$TOP_FOLDERS"
  echo "Total number of files = $TOTAL_FILES"
  echo "Number of:"
  echo "Configuration files (with the .conf extension) = $CONF_FILES"
  echo "Text files = $TEXT_FILES"
  echo "Executable files = $EXEC_FILES"
  echo "Log files (with the .log extension) = $LOG_FILES"
  echo "Archive files = $ARCH_FILES"
  echo "Symbolic links = $SYMLINKS"
  echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
  echo "$TOP_FILES"
  echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
  echo "$TOP_EXEC_FILES"
}
