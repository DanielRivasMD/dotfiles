####################################################################################################
# Bash Profile: Interactive Environment Setup
####################################################################################################

[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"
export BDOTDIR="$HOME/.bash"

####################################################################################################
# Aliases
####################################################################################################

ALIAS="$HOME/.aliases"
[[ -f "$ALIAS" ]] && source "$ALIAS"

####################################################################################################
# Prompt
####################################################################################################

command -v starship >/dev/null && eval "$(starship init bash)"

####################################################################################################
# Completion
####################################################################################################

[[ -f "/usr/local/etc/bash_completion" ]] && source "/usr/local/etc/bash_completion"
eval "$(fzf --bash)"

####################################################################################################
# History
####################################################################################################

export HISTFILE="$BDOTDIR/bash_history"
export HISTSIZE=1000000
export SAVEHIST=1000000

####################################################################################################
# Silence Deprecation Warnings
####################################################################################################

export BASH_SILENCE_DEPRECATION_WARNING=1

####################################################################################################
# Tools & Plugins
####################################################################################################

# Atuin (History Manager)
command -v atuin >/dev/null && {
  export ATUIN_NOBIND="true"
  eval "$(atuin init bash)"
}

# Broot (File Navigator)
[[ -f "$HOME/.config/broot/launcher/bash/br" ]] && source "$HOME/.config/broot/launcher/bash/br"

# Just (Task Runner)
[[ -f "$BDOTDIR/bash_just.sh" ]] && source "$BDOTDIR/bash_just.sh"

# Navi (Cheat Sheet Navigator)
[[ -f "$BDOTDIR/bash_navi.sh" ]] && source "$BDOTDIR/bash_navi.sh"

# Zoxide (Smart Directory Jumper)
command -v zoxide >/dev/null && eval "$(zoxide init bash)"

####################################################################################################
