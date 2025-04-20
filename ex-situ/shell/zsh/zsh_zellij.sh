#!/usr/bin/env zsh

####################################################################################################

if [[ -z "$ZELLIJ" ]]; then
	if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
		zellij attach
	else
		zellij --layout "${ZELLIJ_CONFIG_DIR}/layouts/control.kdl"
	fi

	if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
		exit
	fi
fi

####################################################################################################

# rename tab with current directory
# function current_dir() {
# 	local current_dir=$PWD
# 	if [[ $current_dir == $HOME ]]; then
# 		current_dir="~"
# 	else
# 		current_dir=${current_dir##*/}
# 	fi

# 	echo $current_dir
# }

# function change_tab_title() {
# 	local title=$1
# 	command nohup zellij action rename-tab $title >/dev/null 2>&1
# }

# function set_tab_to_working_dir() {
# 	local result=$?
# 	local title=$(current_dir)
# 	# uncomment the following to show the exit code after a failed command
# 	# if [[ $result -gt 0 ]]; then
# 	#     title="$title [$result]" 
# 	# fi

# 	change_tab_title $title
# }

# function set_tab_to_command_line() {
# 	local cmdline=$1
# 	change_tab_title $cmdline
# }

# if [[ -n $ZELLIJ ]]; then
# 	add-zsh-hook precmd set_tab_to_working_dir
# 	add-zsh-hook preexec set_tab_to_command_line
# fi

####################################################################################################

# function: zf (zellij function)
# description: run zellij with bat
# arguments:
#   $1: command
#   $2: filename

zf() {
  if [ -z "$1" ]; then
    echo "Error: Command argument is missing."
    return 1
  fi
  cmd=$(printf "%s" "$1") # store command

  if [ $# -eq 1 ]; then #check if only one argument is passed
    echo "Error: At least one filename argument is required."
    return 1
  fi

  # iterate through arguments
  shift # remove first argument

  file=$(printf "%s" "$1") # sanitize
  if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  zellij run \
    --name float \
    --floating \
    --height 100 \
    --width 100 \
    --x 100 \
    --y 0 \
    -- "$cmd" "$file"
}

####################################################################################################

kz() {
  zellij kill-session "$(zellij list-sessions | grep '(current)' | sed 's/\x1b\[[0-9;]*m//g' | awk '{print $1}')"
}

####################################################################################################

# Define the default directory where your Zellij layout files are stored.
default_layout_dir="$HOME/.config/zellij/layouts"

# Function to launch a Zellij session with a specified layout.
# It takes the layout file name (without the full path) as an argument.
launch_zellij_session() {
  local layout_file="$1"

  if [ -z "$layout_file" ]; then
    echo "Usage: launch_zellij_session <layout_file>"
    echo "Available layouts (located in $default_layout_dir):"
    # List the layout files.
    if [ -d "$default_layout_dir" ]; then
      ls "$default_layout_dir"
    else
      echo "  (Layout directory does not exist or is not a directory)"
    fi
    return 1
  fi

  layout_path="$default_layout_dir/$layout_file"

  # Check if the layout file exists.
  if [ ! -f "$layout_path" ]; then
    echo "Error: Layout file '$layout_path' not found in '$default_layout_dir'."
    return 1
  fi

  # Launch Zellij with the specified layout.
  zellij --new-session -c "$layout_path"
}

# Enable tab completion for the layout files (Zsh version).
_complete_zellij_layouts() {
  local layout_dir="$HOME/.config/zellij/layouts"
  local files
  files=("$layout_dir"/*.kdl)
  local -a completions
    local -a reply
  for f in "$files[@]"; do
    completions+=("$(basename "$f")")
  done
  compadd "${completions[@]}"
}

# Register the tab completion function.
compdef _complete_zellij_layouts launch_zellij_session

# compadd "${completions[@]}"

# Example usage:
# To launch a session with the "go.kdl" layout, you would type:
#
#   launch_zellij_session go.kdl
#
# and press Enter.
#
# To see available layouts in the default directory:
#   launch_zellij_session
#
# and press Tab.

