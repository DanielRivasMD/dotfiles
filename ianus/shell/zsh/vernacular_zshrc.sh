####################################################################################################
# General settings
####################################################################################################

# Load zsh settings
if [ -f ${HOME}/.profile ]; then
  . ${HOME}/.profile
fi

ZDOTDIR=${HOME}/.zsh

####################################################################################################
#  aliases
####################################################################################################

if [ -f ${IANUS}/shell/terminal/vernacular_aliases.sh ]; then
  . ${IANUS}/shell/terminal/vernacular_aliases.sh
fi

if [ -f ${ZDOTDIR}/zsh_aliases.sh ]; then
  . ${ZDOTDIR}/zsh_aliases.sh
fi

####################################################################################################
#  Prompt
####################################################################################################

eval "$(starship init zsh)"

####################################################################################################
#  Plugins AB
####################################################################################################

# Plugins managed by antibody (AB) statically
# antibody bundle < ${ZDOTDIR}/zsh_plugins.txt > ${ZDOTDIR}/zsh_plugins.sh
source ${ZDOTDIR}/zsh_plugins.sh

# # Plugins managed by antibody (AB) dinamically
# # source <(antibody init)
# zdharma/fast-syntax-highlighting
# zsh-users/zsh-autosuggestions
# zsh-users/zsh-completions
# wfxr/forgit
# chrissicool/zsh-256color

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
# RStudio
####################################################################################################

rstudio () {
  if [ -z "$1" ] ; then
    dir="."
  else
    dir="$1"
  fi
  cmd="proj <- list.files('$dir', pattern = '*.Rproj$', full.names = TRUE); if (length(proj) > 0) { system(paste0('open -na RStudio ', proj[1])) } else { dir = sub('.*/', '', getwd());
    cat('

Version: 1.0

RestoreWorkspace: Default
SaveWorkspace: Default
AlwaysSaveHistory: Default

EnableCodeIndexing: Yes
UseSpacesForTab: Yes
NumSpacesForTab: 2
Encoding: UTF-8

RnwWeave: Sweave
LaTeX: pdfLaTeX

AutoAppendNewline: Yes
StripTrailingWhitespace: Yes

',
    file = paste0(dir, '.Rproj')); system(paste0('open -na RStudio ', dir, '.Rproj'))}"
  Rscript -e $cmd
}

####################################################################################################
# McFly
####################################################################################################

if [[ -r "${HOME}/Factorem/Observatory/mcfly/mcfly.zsh" ]]
then
  source "${HOME}/Factorem/Observatory/mcfly/mcfly.zsh"
fi

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

# edit line in editor with ctrl-x:
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
