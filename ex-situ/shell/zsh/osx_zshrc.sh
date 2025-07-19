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
# fzf-tab Configuration (v0.4+)
####################################################################################################

# 1) Git checkout: disable default sorting so your history order prevails
zstyle ':completion:*:git-checkout:*' sort false

# 2) Group support in descriptions (e.g. commands vs files)
zstyle ':completion:*:descriptions' format '[%d]'

# 3) Colorize file lists using your LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# 4) Turn off zsh’s own menu-style completion (so fzf-tab gets prefix)
zstyle ':completion:*' menu no

# 5) Preview `cd` targets with `eza` (you can swap to `ls ` or `exa`)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

# 6) Core fzf-tab flags: colors + tab-to-accept
zstyle ':fzf-tab:*' fzf-flags \
  --color=fg:1,fg+:2 \
  --bind=tab:accept

# 7) (Optional) inherit your $FZF_DEFAULT_OPTS flags
#    set this to "yes" if you want fzf-tab to pick up your global fzf options
#    note: some flags may conflict with fzf-tab’s behavior
# zstyle ':fzf-tab:*' use-fzf-default-opts yes

# 8) Switch “groups” (from one completion domain to another) with < and >
zstyle ':fzf-tab:*' switch-group '<' '>'

# 9) UI settings: preview window, sizing, reverse
zstyle ':fzf-tab:complete:*' fzf-opts \
  '--preview "bat --style=plain --color=always {}"' \
  '--preview-window=right:60%' \
  '--height=40%' \
  '--reverse'

# 10) Disable <TAB> so native completion stays on TAB
zstyle ':fzf-tab:keymap' '\t' off

# 11) Rebind:
#    <TAB> → native completion
#    ^R    → fzf-tab
bindkey '^I' complete-word

####################################################################################################
# Key Bindings & Widgets
####################################################################################################

# Disable fzf history (Ctrl-R)
bindkey -r '^R'

# fzf-tab (Ctrl-R)
bindkey '^R' fzf-tab-complete

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

reload() {
  source "$ZDOTDIR/osx_zshrc.sh"
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
