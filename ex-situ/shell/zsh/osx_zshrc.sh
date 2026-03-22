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
  if [[ "$(printf '%s\n' 0.48 "$FZF_VERSION" | sort -V | head -n1)" = "0.48" ]]; then
    source <(fzf --zsh)
  else
    source "$HOME/Linked/fzf/shell/key-bindings.zsh"
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

export ATUIN_NOBIND="true"
command -v atuin &>/dev/null && eval "$(atuin init zsh)"

typeset -g ZSH_AUTOSUGGEST_STRATEGY=()

[[ -f "$ZDOTDIR/zsh_just.sh" ]] && source "$ZDOTDIR/zsh_just.sh"

[[ -f "$ZDOTDIR/zsh_navi.sh" ]] && source "$ZDOTDIR/zsh_navi.sh"

command -v starship &>/dev/null && eval "$(starship init zsh)"

command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"
[[ -f "$ZDOTDIR/zsh_zoxide.sh" ]] && source "$ZDOTDIR/zsh_zoxide.sh"

####################################################################################################
# Editor Line Editing
####################################################################################################

autoload edit-command-line
zle -N edit-command-line

####################################################################################################
# Key Bindings & Widgets
####################################################################################################

# fzf history (Ctrl-R)
bindkey '^O' fzf-history-widget

# Atuin search (Ctrl-S)
bindkey '^J' _atuin_search_widget

# fzf file picker (Ctrl-T)
bindkey '^V' fzf-file-widget

# Edit command line (Ctrl-G)
bindkey '^G' edit-command-line

# zoxide widget (Ctrl-H)
bindkey '^S' zoxide_widget

# fzf-cd (Ctrl-J)
bindkey '^R' fzf-cd-widget

# Navi widget (Ctrl-O)
bindkey '^T' navi_widget

####################################################################################################
# Utility Wrappers
####################################################################################################

[[ -f "$ZDOTDIR/zsh_helix.sh" ]] && source "$ZDOTDIR/zsh_helix.sh"

[[ -f "$ZDOTDIR/zsh_kage.sh" ]] && source "$ZDOTDIR/zsh_kage.sh"

####################################################################################################
# Utility Functions
####################################################################################################

reload() { source "$ZDOTDIR/.zshrc"; }

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

####################################################################################################

if [[ -z "$ZELLIJ" ]]; then
  terminal=""
  if [[ "$(uname)" == "Darwin" ]]; then
    case "$__CFBundleIdentifier" in
      org.alacritty) terminal="alacritty" ;;
      com.mitchellh.ghostty) terminal="ghostty" ;;
    esac
  else
    parent_process=$(ps -o comm= $PPID 2>/dev/null | sed 's/.*\///')
    case "$parent_process" in
      alacritty | Alacritty) terminal="alacritty" ;;
      ghostty | Ghostty) terminal="ghostty" ;;
    esac
    if [[ -z "$terminal" ]]; then
      [[ -n "$ALACRITTY_SOCKET" ]] && terminal="alacritty"
      [[ -n "$GHOSTTY_RESOURCES_DIR" ]] && terminal="ghostty"
    fi
  fi

  if [[ -n "$terminal" ]]; then
    if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
      zellij attach
    else
      layout_dir="${ZELLIJ_CONFIG_DIR:-$HOME/.config/zellij}/layouts"
      layout_file="${layout_dir}/${terminal}.kdl"
      if [[ -f "$layout_file" ]]; then
        zellij --layout "$layout_file"
      else
        zellij
      fi
    fi

    if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
      exit
    fi
  fi
fi

####################################################################################################
