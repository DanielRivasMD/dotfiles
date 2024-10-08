####################################################################################################

# Setup fzf
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

####################################################################################################

# Auto-completion
[[ $- == *i* ]] && [ -f "/usr/local/opt/fzf/shell/completion.bash" ] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

####################################################################################################

# bindings
[ -f "/usr/local/opt/fzf/shell/key-bindings.bash" ] && source "/usr/local/opt/fzf/shell/key-bindings.bash"

####################################################################################################
