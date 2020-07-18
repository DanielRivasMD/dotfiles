
# ==========================
# ===  General settings  ===
# ==========================


# ==========================
# ===  Completion        ===
# ==========================

# Git-autocompletion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Pandoc autocompletion
eval "$(pandoc --bash-completion)"

# Fuzzy finder (fzf)
[ -f ~/.archive/bash/fzf.bash ] && source ~/.archive/bash/fzf.bash

# ==========================
# ===  SH aliases        ===
# ==========================

# Load SH aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# ==========================
# ===  History           ===
# ==========================

HISTFILE=~/.bash_history
HISTSIZE=1000000
SAVEHIST=1000000

# ==========================
# ===  SH Prompt         ===
# ==========================

source ~/.archive/bash/bash_prompt.sh
set_prompt

# ==========================
# ===  Silence warning   ===
# ==========================

export BASH_SILENCE_DEPRECATION_WARNING=1

# ==========================
# ===  zoxide            ===
# ==========================

eval "$(zoxide init bash)"

# ==========================
# ===  McFly             ===
# ==========================

if [[ -r "$(brew --prefix)/opt/mcfly/mcfly.bash" ]]
then
  source "$(brew --prefix)/opt/mcfly/mcfly.bash"
fi

# ==========================

echo -n -e "\t"; echo ''
echo -n -e "\t"; echo '   ___  ___   ______ __'
echo -n -e "\t"; echo '  / _ )/ _ | / __/ // /'
echo -n -e "\t"; echo ' / _  / __ |_\ \/ _  /'
echo -n -e "\t"; echo '/____/_/ |_/___/_//_/'
echo -n -e "\t"; echo ''

# ==========================
