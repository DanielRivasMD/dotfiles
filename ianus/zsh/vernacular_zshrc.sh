
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

# Pandoc autocompletion
source ~/.archive/ianus/zsh/zsh_pandoc_autocompletion.sh

# Fuzzy finder (fzf)
[ -f ~/.archive/ianus/zsh/fzf.zsh ] && source ~/.archive/ianus/zsh/fzf.zsh

# ==========================
# ===   Prompt           ===
# ==========================

# Left prompt
source ~/.zsh_prompt
set_prompt

# Right prompt
RPROMPT="¦ %{$fg[yellow]%}%T %{$reset_color%}Ξ %{$fg[blue]%}%! %{$reset_color%}¦"

# Fossil autocompletion & prompt
source ~/.archive/ianus/zsh/fossil_prompt.sh

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
# ===  Commands          ===
# ==========================

mman() { command man "$@" | more }

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
