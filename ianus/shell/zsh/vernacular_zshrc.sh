####################################################################################################
# General settings
# plugins
####################################################################################################
  
# created by zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# Load zsh settings
if [ -f ${HOME}/.profile ]; then
  . ${HOME}/.profile
fi

ZDOTDIR=${HOME}/.zsh

####################################################################################################
#  aliases
####################################################################################################
# plugins
plug "zap-zsh/completions"
plug "zap-zsh/sudo"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

if [ -f ${IANUS}/shell/terminal/vernacular_aliases.sh ]; then
  . ${IANUS}/shell/terminal/vernacular_aliases.sh
fi
plug "hlissner/zsh-autopair"
plug "MichaelAquilina/zsh-you-should-use"
plug "olrtg/zsh-fvm"

if [ -f ${ZDOTDIR}/zsh_aliases.sh ]; then
  . ${ZDOTDIR}/zsh_aliases.sh
fi
plug "wintermi/zsh-brew"
plug "wintermi/zsh-lsd"
plug "wintermi/zsh-starship"
plug "wintermi/zsh-rust"
plug "wintermi/zsh-golang"

####################################################################################################
#  Prompt
####################################################################################################

eval "$(starship init zsh)"

####################################################################################################
####################################################################################################



####################################################################################################
#  Autocompletion
####################################################################################################

# add custom zsh completion path
fpath=($HOME/.config/zsh_completion $fpath)

# Autocompletion with arrow interphase
autoload -Uz compinit
# Dump zcompdump
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)   # Include hidden files.
zstyle ':completion:*' menu select

setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

# Case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pandoc autocompletion
source ${ZDOTDIR}/zsh_pandoc_autocompletion.sh

# Fuzzy finder (fzf)
[ -f ${ZDOTDIR}/fzf.zsh ] && source ${ZDOTDIR}/fzf.zsh

####################################################################################################
# History
####################################################################################################

HISTFILE=${ZDOTDIR}/zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
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

if [ -f ${ZDOTDIR}/zsh_just_patch.sh ]; then
  . ${ZDOTDIR}/zsh_just_patch.sh
fi

####################################################################################################
# navi
####################################################################################################

if [ -f ${ZDOTDIR}/zsh_navi_patch.sh ]; then
  . ${ZDOTDIR}/zsh_navi_patch.sh
fi

####################################################################################################
# zoxide
####################################################################################################

eval "$(zoxide init zsh)"

####################################################################################################
# editor
####################################################################################################

# edit line in editor with ctrl-g:
autoload edit-command-line; zle -N edit-command-line

####################################################################################################
# Key bindings
####################################################################################################

# movement
bindkey "\x1b[1;3D" backward-word
bindkey "\x1b[1;3C" forward-word

# atuin
bindkey '^s' _atuin_search_widget

# just
bindkey '^j' _call_just

# navi
bindkey '^n' _call_navi

# command edit
bindkey '^g' edit-command-line

# unbind
bindkey -r "^B"
bindkey -r "^F"
bindkey -r "^H"
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
