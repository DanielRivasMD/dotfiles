####################################################################################################
# Shell Settings
####################################################################################################

[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"

####################################################################################################
# Aliases
####################################################################################################

ALIAS="$HOME/.aliases"
[[ -f "$ALIAS" ]] && source "$ALIAS"

####################################################################################################
# Plugin Manager (Sheldon)
####################################################################################################

command -v sheldon &>/dev/null && eval "$(sheldon source)"

####################################################################################################
# Completion System
####################################################################################################

# ensure we load your custom completions directory first
fpath=("$ZSH_COMPLETION" $fpath)

# initialize completions (fresh dump each zsh version)
autoload -Uz compinit
autoload -Uz bashcompinit && bashcompinit
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"

# disable menu-style fallback showing partial matches
zstyle ':completion:*' menu select

# insert the only match immediately
zstyle ':completion:*' insert-unambiguous true

# control which completers run (complete → match → expand)
zstyle ':completion:*' completer _complete _match _expand

# case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# allow aliases to be completed
setopt COMPLETE_ALIASES

[[ -f "$ZSH_COMPLETION/_tab" ]] && source "$ZSH_COMPLETION/_tab"

####################################################################################################
# Fuzzy Finder (fzf native)
####################################################################################################

# Load fzf’s default key bindings (Ctrl-T, Alt-C) and completion
if command -v fzf &>/dev/null; then
  FZF_VERSION="$(fzf --version | cut -d' ' -f1)"
  # Only source integration if version >= 0.48
  if [[ "$(printf '%s\n' 0.48 "$FZF_VERSION" | sort -V | head -n1)" = "0.48" ]]; then
    source <(fzf --zsh)
  fi
fi

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

# atuin (history manager, but we’ll disable its bind)
export ATUIN_NOBIND="true"
command -v atuin &>/dev/null && eval "$(atuin init zsh)"

# disable autosuggest
typeset -g ZSH_AUTOSUGGEST_STRATEGY=()

# just
JFUN="$ZDOTDIR/zsh_just.sh"
[[ -f "$JFUN" ]] && source "$JFUN"

# navi
NFUN="$ZDOTDIR/zsh_navi.sh"
[[ -f "$NFUN" ]] && source "$NFUN"

# starship prompt
command -v starship &>/dev/null && eval "$(starship init zsh)"

# yazi
YFUN="$ZDOTDIR/zsh_yazi.sh"
[[ -f "$YFUN" ]] && source "$YFUN"

# zoxide (frecency-based cd)
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
# Helix Logging
####################################################################################################

hx() {
  : "${HELIX_LOG:=$HOME/.cache/helix/logs/helix-$(date +%Y%m%d-%H%M%S)-$$.log}"
  mkdir -p "$(dirname "$HELIX_LOG")"
  command hx --log "$HELIX_LOG" "$@"
}

####################################################################################################
# Utility Functions
####################################################################################################

# reload with ease
reload() { source "$ZDOTDIR/.zshrc"; }

# tre function wrapper
tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

# initialize aliases
aliases rehash

####################################################################################################

if [[ -z "$ZELLIJ" ]]; then
  case "$__CFBundleIdentifier" in
    org.alacritty)
      if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
        zellij attach
      else
        zellij --layout "${ZELLIJ_CONFIG_DIR}/layouts/alacritty.kdl"
      fi
      ;;
    com.mitchellh.ghostty)
      if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
        zellij attach
      else
        zellij --layout "${ZELLIJ_CONFIG_DIR}/layouts/ghostty.kdl"
      fi
      ;;
    *)
      # Not Alacritty or Ghostty → do nothing
      ;;
  esac

  if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
    exit
  fi
fi

####################################################################################################
