#!/bin/bash
#
# Daniel Rivas <<danielrivasmd@gmail.com>>
#
# roadmap – update ROADMAP.txt
#
# Usage:
#   roadmap

####################################################################################################

if ! command -v todor >/dev/null 2>&1; then
  echo "Error: 'todor' command not found! Please install first" >&2
  exit 1
fi

####################################################################################################

ROADMAP="${1:-ROADMAP.txt}" # allow optional filename argument, default ROADMAP.txt

if [[ ! -f "$ROADMAP" ]]; then
  {
    printf '==================================================\n'
    printf '==================================================\n'
  } >"$ROADMAP"
fi

if [[ "$(uname)" == "Darwin" ]]; then
  # macOS (BSD sed): -i '' requires empty backup suffix
  sed -i '' '/^==================================================$/,/^==================================================$/d' "$ROADMAP"
else
  # Linux (GNU sed): -i alone works, and we allow optional trailing spaces
  sed -i '/^==================================================[[:space:]]*$/,/^==================================================[[:space:]]*$/d' "$ROADMAP"
fi

{
  printf '==================================================\n'
  if command -v todor >/dev/null 2>&1; then
    todor -s
  else
    echo "Warning: 'todor' command not found – no tasks added" >&2
  fi
  printf '==================================================\n'
} >>"$ROADMAP"

####################################################################################################
