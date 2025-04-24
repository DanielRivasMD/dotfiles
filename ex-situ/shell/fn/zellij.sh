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

# function: zek (zellij kill)
# description: kill curent zellij session
zek() {
  zellij kill-session "$(zellij list-sessions | grep '(current)' | sed 's/\x1b\[[0-9;]*m//g' | awk '{print $1}')"
}

####################################################################################################


# function: zel (zellij launch)
# description: launch zellij session
# arguments: $1 session
zel() {
  local layout_file="$1"

  # define default directory zellij layout
  default_layout_dir="$HOME/.config/zellij/layouts"
  if [ -z "$layout_file" ]; then
    echo "Usage: zel <layout_file>"
    echo "Available layouts (located in $default_layout_dir):"
    # list layouts
    if [ -d "$default_layout_dir" ]; then
      ls "$default_layout_dir"
    else
      echo "  (Layout directory does not exist or is not a directory)"
    fi
    return 1
  fi

  layout_path="$default_layout_dir/$layout_file"

  # check if layout exists
  if [ ! -f "$layout_path" ]; then
    echo "Error: Layout file '$layout_path' not found in '$default_layout_dir'."
    return 1
  fi

  # launch zellij with specified layout
  zellij --new-session-with-layout "$layout_path"
}

####################################################################################################
