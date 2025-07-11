####################################################################################################
# Shell Settings
####################################################################################################

[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"
export ZDOTDIR="$HOME/.zsh"

####################################################################################################
# Aliases
####################################################################################################

VALIAS="$EX_SITU/shell/term/osx_aliases.sh"
ZALIAS="$ZDOTDIR/zsh_aliases.sh"

[[ -f "$VALIAS" ]] && source "$VALIAS"
[[ -f "$ZALIAS" ]] && source "$ZALIAS"

####################################################################################################
# Plugin Manager (Sheldon)
####################################################################################################

command -v sheldon >/dev/null && eval "$(sheldon source)"

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
# Fuzzy Finder (fzf)
####################################################################################################

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

# Atuin
export ATUIN_NOBIND="true"
command -v atuin >/dev/null && eval "$(atuin init zsh)"

# Just
JFUN="$ZDOTDIR/zsh_just.sh"
[[ -f "$JFUN" ]] && source "$JFUN"

# Navi
NFUN="$ZDOTDIR/zsh_navi.sh"
[[ -f "$NFUN" ]] && source "$NFUN"

# Starship
command -v starship >/dev/null && eval "$(starship init zsh)"

# Zellij (only inside Alacritty)
if [[ "$__CFBundleIdentifier" == "org.alacritty" ]]; then
  ZJFUN="$ZDOTDIR/zsh_zellij.sh"
  [[ -f "$ZJFUN" ]] && source "$ZJFUN"
fi

# Zoxide
command -v zoxide >/dev/null && eval "$(zoxide init zsh)"
ZFUN="$ZDOTDIR/zsh_zoxide.sh"
[[ -f "$ZFUN" ]] && source "$ZFUN"

####################################################################################################
# Editor Line Editing
####################################################################################################

autoload edit-command-line
zle -N edit-command-line

####################################################################################################
# Key Bindings
####################################################################################################

bindkey '^s' _atuin_search_widget
bindkey '^j' edit-command-line
bindkey '^g' _call_just
bindkey '^o' _call_navi
bindkey '^h' _call_zi

# Unbind unused defaults
bindkey -r "^B"
bindkey -r "^F"
bindkey -r "^N"
bindkey -r "^P"
bindkey -r "^X"

####################################################################################################
# Utility Functions
####################################################################################################

reload() {
  source "$HOME/.zshrc"
}

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
