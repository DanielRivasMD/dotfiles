####################################################################################################
# settings
####################################################################################################

# load zsh settings
[ -f ${HOME}/.profile ] && . ${HOME}/.profile
ZDOTDIR=${HOME}/.zsh

####################################################################################################
# aliases
####################################################################################################

# load aliases
local VALIAS="${IANUS}/shell/terminal/vernacular_aliases.sh"
[ -f ${VALIAS} ] && . ${VALIAS}

local ZALIAS="${ZDOTDIR}/zsh_aliases.sh"
[ -f ${ZALIAS} ] && . ${ZALIAS}

####################################################################################################
# plugins
####################################################################################################
  
# created by zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# plugins
plug "zap-zsh/completions"
plug "zap-zsh/sudo"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

plug "hlissner/zsh-autopair"
plug "MichaelAquilina/zsh-you-should-use"
plug "olrtg/zsh-fvm"

plug "wintermi/zsh-brew"
plug "wintermi/zsh-golang"
plug "wintermi/zsh-rust"
plug "wintermi/zsh-starship"

####################################################################################################
#  autocompletion
####################################################################################################

# add custom zsh completion path
fpath=($HOME/.config/zsh_completion $fpath)

# autocompletion with arrow interphase
autoload -Uz compinit
# dump zcompdump
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)   # include hidden files
zstyle ':completion:*' menu select

setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

# case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

####################################################################################################

# fuzzy finder (fzf)
[ -f ${ZDOTDIR}/fzf.zsh ] && source ${ZDOTDIR}/fzf.zsh

####################################################################################################
# history
####################################################################################################

HISTFILE=${ZDOTDIR}/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

####################################################################################################
# atuin
####################################################################################################

# do not bind any keys
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

####################################################################################################
# just
####################################################################################################

JFUN="${ZDOTDIR}/zsh_just.sh"
[ -f ${JFUN} ] && source ${JFUN}

####################################################################################################
# navi
####################################################################################################

NFUN="${ZDOTDIR}/zsh_navi.sh"
[ -f ${NFUN} ] && source ${NFUN}

####################################################################################################
#  starship
####################################################################################################

eval "$(starship init zsh)"

####################################################################################################
# zellij
####################################################################################################

ZJFUN="${ZDOTDIR}/zsh_zellij.sh"
[ -f ${ZJFUN} ] && source ${ZJFUN}

####################################################################################################
# zoxide
####################################################################################################

eval "$(zoxide init zsh)"

ZFUN="${ZDOTDIR}/zsh_zoxide.sh"
[ -f ${ZFUN} ] && source ${ZFUN}

####################################################################################################
# editor
####################################################################################################

# edit line in editor with ctrl-g => shift-enter
autoload edit-command-line; zle -N edit-command-line

####################################################################################################
# key bindings
####################################################################################################

# # movement
# bindkey "\x1b[1;3D" backward-word
# bindkey "\x1b[1;3C" forward-word

# atuin
bindkey '^s' _atuin_search_widget

# just
bindkey '^j' _call_just

# navi
bindkey '^n' _call_navi

# command edit
bindkey '^g' edit-command-line

# zoxide
bindkey '^h' _call_zi

# unbind
bindkey -r "^B"
bindkey -r "^F"
bindkey -r "^O"
bindkey -r "^P"
bindkey -r "^X"

####################################################################################################

echo -n -e "\t"; echo '                 '
echo -n -e "\t"; echo '  ____  ______ __'
echo -n -e "\t"; echo ' /_  / / __/ // /'
echo -n -e "\t"; echo '  / /__\ \/ _  / '
echo -n -e "\t"; echo ' /___/___/_//_/  '
echo -n -e "\t"; echo '                 '

####################################################################################################
