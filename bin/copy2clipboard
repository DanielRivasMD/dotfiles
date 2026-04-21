#!/bin/bash
#
# Daniel Rivas <<danielrivasmd@gmail.com>>
#
# copy2clipboard: clipboard manager across OS
#
# Usage:
#   copy2clipboard

####################################################################################################

if command -v pbcopy &>/dev/null; then
  cat "$1" | pbcopy
elif command -v wl-copy &>/dev/null; then
  cat "$1" | wl-copy
else
  echo "No clipboard tool found" >&2
  exit 1
fi

####################################################################################################
