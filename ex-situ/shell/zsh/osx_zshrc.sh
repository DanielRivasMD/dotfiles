####################################################################################################
# Shell Settings
####################################################################################################

[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"

####################################################################################################
# Aliases
####################################################################################################

ALIAS="$EX_SITU/shell/term/osx_aliases.sh"
[[ -f "$ALIAS" ]] && source "$ALIAS"

####################################################################################################
# Plugin Manager (Sheldon)
####################################################################################################

command -v sheldon &>/dev/null && eval "$(sheldon source)"

####################################################################################################
# Completion System
####################################################################################################

fpath=("$ZSH_COMPLETION" $fpath)

autoload -Uz compinit
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"

_comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt COMPLETE_ALIASES

[[ -f "$ZSH_COMPLETION/_tab" ]] && source "$ZSH_COMPLETION/_tab"

####################################################################################################
# Fuzzy Finder (fzf native)
####################################################################################################

# Load fzf’s default key bindings (Ctrl-T, Alt-C) and completion
[[ -f "$ZDOTDIR/fzf.zsh" ]] && source "$ZDOTDIR/fzf.zsh"
source <(fzf --zsh)

####################################################################################################
# History
####################################################################################################

export HISTFILE="$ZDOTDIR/zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt appendhistory

####################################################################################################
# CLI Tools Initialization
####################################################################################################

# Atuin (history manager, but we’ll disable its bind)
export ATUIN_NOBIND="true"
command -v atuin &>/dev/null && eval "$(atuin init zsh)"

# Just
JFUN="$ZDOTDIR/zsh_just.sh"
[[ -f "$JFUN" ]] && source "$JFUN"

# Navi
NFUN="$ZDOTDIR/zsh_navi.sh"
[[ -f "$NFUN" ]] && source "$NFUN"

# Starship prompt
command -v starship &>/dev/null && eval "$(starship init zsh)"

# Zellij Helpers (only in Alacritty)
if [[ "$__CFBundleIdentifier" == "org.alacritty" ]]; then
  ZJFUN="$ZDOTDIR/zsh_zellij.sh"
  [[ -f "$ZJFUN" ]] && source "$ZJFUN"
fi

# Zoxide (frecency-based cd)
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"
ZFUN="$ZDOTDIR/zsh_zoxide.sh"
[[ -f "$ZFUN" ]] && source "$ZFUN"

####################################################################################################
# Editor Line Editing
####################################################################################################

autoload edit-command-line
zle -N edit-command-line

####################################################################################################
# Key Bindings & Widgets
####################################################################################################

# fzf history (Ctrl-R)
bindkey '^R' fzf-history-widget

# Atuin search (Ctrl-S)
bindkey '^S' _atuin_search_widget

# fzf file picker (Ctrl-T)
bindkey '^T' fzf-file-widget

# Edit command line (Ctrl-G)
bindkey '^G' edit-command-line

# zoxide widget (Ctrl-H)
bindkey '^H' zoxide_widget

# fzf-cd (Ctrl-J)
bindkey '^J' fzf-cd-widget

# Navi widget (Ctrl-O)
bindkey '^O' navi_widget

####################################################################################################
# Utility Functions
####################################################################################################

reload() { source "$ZDOTDIR/osx_zshrc.sh"; }

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

####################################################################################################
# Welcome Banner
####################################################################################################

echo -n -e "\t"; echo '                 '
echo -n -e "\t"; echo '  ____  ______ __'
echo -n -e "\t"; echo ' /_  / / __/ // /'
echo -n -e "\t"; echo '  / /__\ \/ _  / '
echo -n -e "\t"; echo ' /___/___/_//_/  '
echo -n -e "\t"; echo '                 '

####################################################################################################
