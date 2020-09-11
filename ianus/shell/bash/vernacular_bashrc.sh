
# ==========================
# ===  General settings  ===
# ==========================

BDOTDIR=${HOME}/.bash

# ==========================
# ===   aliases          ===
# ==========================

if [ -f ${HOME}/.alias ]; then
  . ${HOME}/.alias
fi

if [ -f ${BDOTDIR}/bash_aliases ]; then
  . ${BDOTDIR}/bash_aliases
fi

# ==========================
# ===  Prompt            ===
# ==========================

eval "$(starship init bash)"

# ==========================
# ===  Completion        ===
# ==========================

# Git-autocompletion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Pandoc autocompletion
eval "$(pandoc --bash-completion)"

# Fuzzy finder (fzf)
[ -f ${IANUS}bash/fzf.bash ] && source ${IANUS}bash/fzf.bash

# ==========================
# ===  History           ===
# ==========================

HISTFILE=${BDOTDIR}/bash_history
HISTSIZE=1000000
SAVEHIST=1000000

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
