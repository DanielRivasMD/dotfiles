
# ==========================
# ===  General settings  ===
# ==========================

# Load zsh settings
if [ -f ~/.zsh_profile ]; then
  . ~/.zsh_profile
fi

# ==========================
# ===  Plugins AB        ===
# ==========================

# Plugins managed by antibody (AB) statically
# antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins
source ~/.zsh_plugins


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

# # Pandoc autocompletion
# source ~/.archive/zsh/local_zsh_pandoc_autocompletion.sh

# Fuzzy finder (fzf)
[ -f ~/.archive/zsh/fzf.zsh ] && source ~/.archive/zsh/fzf.zsh

# ==========================
# ===   Prompt           ===
# ==========================

# Left prompt
source ~/.zsh_prompt
set_prompt

# Right prompt
RPROMPT="¦ %{$fg[yellow]%}%T %{$reset_color%}Ξ %{$fg[blue]%}%! %{$reset_color%}¦"

# # Fossil autocompletion & prompt
# source ~/.archive/zsh/fossil_prompt.sh

# ==========================
# ===  ZSH aliases       ===
# ==========================

# Load ZSH aliases
if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

# ==========================
# ===  History           ===
# ==========================

HISTFILE=~/.zsh_history
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
# ===  Commands          ===
# ==========================

mman() { command man "$@" | more }

# ==========================
# ===  zoxide            ===
# ==========================

eval "$(~/bin/zoxide init zsh)"

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

# edit line in vim with ctrl-n:
autoload edit-command-line; zle -N edit-command-line
bindkey '^n' edit-command-line

# ==========================
