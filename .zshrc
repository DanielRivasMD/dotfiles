
# ==========================
# ===  General settings  ===
# ==========================

# # Launch Bash on Atom
# if [[ $TERM_PROGRAM == platformio-ide-terminal ]]
# then
#   bash -l
# fi

# Load zsh settings
if [ -f ~/.zsh_profile ]; then
  . ~/.zsh_profile
fi

# ==========================
# ===  Plugins AB        ===
# ==========================

# Plugins managed by antibody (AB) statically
# antibody bundle < ~/.archive/zsh/zsh_plugins.txt > ~/.archive/zsh/zsh_plugins.sh
source ~/.archive/zsh/zsh_plugins.sh

# Plugins managed by antibody (AB) dinamically
# source <(antibody init)
# antibody bundle zdharma/fast-syntax-highlighting
# antibody bundle zsh-users/zsh-autosuggestions
# antibody bundle zsh-users/zsh-completions
# antibody bundle 'wfxr/forgit'

# ==========================
# ===  Autocompletion    ===
# ==========================

# Autocompletion with arrow interphase
autoload -Uz compinit
# Dump zcompdump
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' menu select

setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

# Case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pandoc autocompletion
source ~/.archive/zsh/local_zsh_pandoc_autocompletion.sh

# Fuzzy finder (fzf)
[ -f ~/.archive/zsh/fzf.zsh ] && source ~/.archive/zsh/fzf.zsh

# ==========================
# ===   Prompt           ===
# ==========================

# Left prompt
source ~/.archive/zsh/zsh_prompt.sh
set_prompt

# Right prompt
RPROMPT="¦ %{$fg[yellow]%}%T %{$reset_color%}Ξ %{$fg[blue]%}%! %{$reset_color%}¦"

# Fossil autocompletion & prompt
source ~/.archive/zsh/fossil_prompt.sh

# edit line
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# ==========================
# ===  ZSH aliases       ===
# ==========================

# Load ZSH aliases
if [ -f ~/.zaliases ]; then
  . ~/.zaliases
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

echo -n -e "\t"; echo '                 '
echo -n -e "\t"; echo '  ____  ______ __'
echo -n -e "\t"; echo ' /_  / / __/ // /'
echo -n -e "\t"; echo '  / /__\ \/ _  / '
echo -n -e "\t"; echo ' /___/___/_//_/  '
echo -n -e "\t"; echo '                 '

# ==========================
