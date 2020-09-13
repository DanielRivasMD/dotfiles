
# ==========================
# ===  General settings  ===
# ==========================

ZDOTDIR=${HOME}/.zsh

# ==========================
# ===   aliases          ===
# ==========================

if [ -f ${IANUS}shell/terminal/pawsey_aliases.sh ]; then
  . ${IANUS}shell/terminal/pawsey_aliases.sh
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
bindkey "\x01" beginning-of-line
bindkey "\x05" end-of-line

# ==========================
# ===  zoxide            ===
# ==========================

eval "$(~/.cargo/bin/zoxide init zsh)"

# ==========================
# ===  McFly             ===
# ==========================

if [[ -r "/home/drivas/private/software/mcfly/mcfly.zsh" ]]
then
  source "/home/drivas/private/software/mcfly/mcfly.zsh"
fi

# ==========================
# ===  editor            ===
# ==========================

# edit line in editor with ctrl-n:
autoload edit-command-line; zle -N edit-command-line
bindkey '^n' edit-command-line

# ==========================
