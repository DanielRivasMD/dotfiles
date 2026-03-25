#!/bin/bash
cmd="$1"
help_text="$($cmd --help 2>&1)"
{
  echo "#compdef $cmd"
  echo
  echo "_$cmd() {"
  echo "  _arguments \\"
  echo "$help_text" | grep -E '^  --[a-z-]+' | while read -r line; do
    opt=$(echo "$line" | awk '{print $1}' | tr -d ',')
    desc=$(echo "$line" | awk -F'  ' '{print $2}' | sed 's/"/\\"/g')
    # Basic type detection
    if [[ "$desc" == *"file"* ]]; then
      echo "    '$opt[file:_files]' \\"
    elif [[ "$desc" == *"type: Int64"* || "$desc" == *"type: Float64"* ]]; then
      echo "    '$opt[$desc]' \\"
    else
      echo "    '$opt[$desc]' \\"
    fi
  done
  echo "    '*:input file:_files'"
  echo "}"
  echo
  echo "_$cmd \"\$@\""
} >"_$cmd"
