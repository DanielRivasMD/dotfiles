
# ==========================
# ===  General settings  ===
# ==========================

# Load zsh settings
if [ -f ${HOME}/.profile ]; then
  . ${HOME}/.profile
fi

ZDOTDIR=${HOME}/.zsh

# ==========================
# ===   aliases          ===
# ==========================

if [ -f ${IANUS}/shell/terminal/vernacular_aliases.sh ]; then
  . ${IANUS}/shell/terminal/vernacular_aliases.sh
fi

if [ -f ${ZDOTDIR}/zsh_aliases.sh ]; then
  . ${ZDOTDIR}/zsh_aliases.sh
fi

# ==========================
# ===   Prompt           ===
# ==========================

eval "$(starship init zsh)"

# ==========================
# ===  Plugins AB        ===
# ==========================

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


# ==========================
# ===  Autocompletion    ===
# ==========================

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

# alias completions
compdef _mkdir mkd
compdef _mplayer mp
compdef _git-local-ignore gl

# exa
compdef _exa lg
compdef _exa lga
compdef _exa lgr

compdef _exa lgar
compdef _exa lgsa
compdef _exa lgsc

compdef _exa lgg
compdef _exa lgga
compdef _exa lggr

compdef _exa lggar
compdef _exa lggsa
compdef _exa lggsc

compdef _exa lgt
compdef _exa lgd

# # lsd
# compdef _lsd l
# compdef _lsd lr
# compdef _lsd lss
#
# compdef _lsd la
# compdef _lsd lar
# compdef _lsd las
#
# compdef _lsd ls
# compdef _lsd lsr
#
# compdef _lsd lsa
# compdef _lsd lsar
#
# compdef _lsd lt
# compdef _lsd lta
#
# compdef _lsd le
# compdef _lsd lea


# ==========================
# ===  History           ===
# ==========================

HISTFILE=${ZDOTDIR}/zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory

# ==========================
# ===  Key bindings      ===
# ==========================

bindkey "\x1b[1;3D" backward-word
bindkey "\x1b[1;3C" forward-word

# ==========================
# ===  RStudio           ===
# ==========================

rstudio() { command open "$@" -a RStudio }

# ==========================
# ===  McFly             ===
# ==========================

if [[ -r "${HOME}/Factorem/Observatory/mcfly/mcfly.zsh" ]]
then
  source "${HOME}/Factorem/Observatory/mcfly/mcfly.zsh"
fi

# ==========================
# ===  navi              ===
# ==========================

if [ -f ${ZDOTDIR}/zsh_navi_patch.sh ]; then
  . ${ZDOTDIR}/zsh_navi_patch.sh
fi

# ==========================
# ===  zoxide            ===
# ==========================

eval "$(zoxide init zsh)"

# ==========================
# ===  editor            ===
# ==========================

# edit line in editor with ctrl-n:
autoload edit-command-line; zle -N edit-command-line
bindkey '^b' edit-command-line

# ==========================

echo -n -e "\t"; echo '                 '
echo -n -e "\t"; echo '  ____  ______ __'
echo -n -e "\t"; echo ' /_  / / __/ // /'
echo -n -e "\t"; echo '  / /__\ \/ _  / '
echo -n -e "\t"; echo ' /___/___/_//_/  '
echo -n -e "\t"; echo '                 '

# ==========================
