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
VALIAS="${EX_SITU}/shell/terminal/vernacular_aliases.sh"
[ -f "${VALIAS}" ] && . "${VALIAS}"

ZALIAS="${ZDOTDIR}/zsh_aliases.sh"
[ -f "${ZALIAS}" ] && . "${ZALIAS}"

####################################################################################################
# plugins
####################################################################################################

# plugin manager
eval "$(sheldon source)"

####################################################################################################
# autocompletion
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
# starship
####################################################################################################

eval "$(starship init zsh)"

####################################################################################################
# yazi
####################################################################################################

YFUN="${ZDOTDIR}/zsh_yazi.sh"
[ -f ${YFUN} ] && source ${YFUN}

####################################################################################################
# zellij
####################################################################################################

if [[ "$__CFBundleIdentifier" == "org.alacritty" ]]; then
  ZJFUN="${ZDOTDIR}/zsh_zellij.sh"
  [ -f ${ZJFUN} ] && source ${ZJFUN}
fi

####################################################################################################
# zoxide
####################################################################################################

eval "$(zoxide init zsh)"

ZFUN="${ZDOTDIR}/zsh_zoxide.sh"
[ -f ${ZFUN} ] && source ${ZFUN}

####################################################################################################
# editor
####################################################################################################

# edit line
autoload edit-command-line; zle -N edit-command-line

####################################################################################################

# completions on demmand
source <(bender completion zsh)
source <(cerberus completion zsh)
source <(gorgon completion zsh)
source <(lou completion zsh)
source <(mbombo completion zsh)
source <(minerva completion zsh)
source <(tabularasa completion zsh)
source <(fzf --zsh)

####################################################################################################
# bindings
####################################################################################################

# atuin
bindkey '^s' _atuin_search_widget

# command edit
bindkey '^j' edit-command-line

# just
bindkey '^g' _call_just

# navi
bindkey '^o' _call_navi

# zoxide
bindkey '^h' _call_zi

# unbind
bindkey -r "^B"
bindkey -r "^F"
bindkey -r "^N"
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
