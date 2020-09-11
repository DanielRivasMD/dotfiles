
# ==========================
# ===  General settings  ===
# ==========================

# Load zsh settings
if [ -f ~/.profile ]; then
  . ~/.profile
fi

ZDOTDIR=${HOME}/.zsh

# ==========================
# ===   aliases          ===
# ==========================

if [ -f ${HOME}/.alias ]; then
  . ${HOME}/.alias
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
# antibody bundle < ${IANUS}zsh/zsh_plugins.txt > ${IANUS}zsh/zsh_plugins.sh
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
# ===  JetBrains         ===
# ==========================

clion() { command open "$@" -a CLion }

goland() { command open "$@" -a GoLand }

pycharm() { command open "$@" -a PyCharm }

intellij() { command open "$@" -a IntelliJ\ IDEA }

wstorm() { command open "$@" -a WebStorm }

mine() { command open "$@" -a RubyMine }

pstorm() { command open "$@" -a PhpStorm }

# ==========================
# ===  RStudio           ===
# ==========================

rstudio() { command open "$@" -a RStudio }

# ==========================
# ===  McFly             ===
# ==========================

if [[ -r "$(brew --prefix)/opt/mcfly/mcfly.zsh" ]]
then
  source "$(brew --prefix)/opt/mcfly/mcfly.zsh"
fi

# ==========================
# ===  zoxide            ===
# ==========================

eval "$(zoxide init zsh)"

# ==========================
# ===  editor            ===
# ==========================

# edit line in vim with ctrl-n:
autoload edit-command-line; zle -N edit-command-line
bindkey '^n' edit-command-line

# ==========================

echo -n -e "\t"; echo '                 '
echo -n -e "\t"; echo '  ____  ______ __'
echo -n -e "\t"; echo ' /_  / / __/ // /'
echo -n -e "\t"; echo '  / /__\ \/ _  / '
echo -n -e "\t"; echo ' /___/___/_//_/  '
echo -n -e "\t"; echo '                 '

# ==========================
