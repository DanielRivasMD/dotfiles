
# ==========================
# ===  Pawsey default    ===
# ==========================

# ==========================
# ===  General settings  ===
# ==========================

# Load General profile
if [ -f ${HOME}/.profile ]; then
  . ${HOME}/.profile
fi

BDOTDIR=${HOME}/.bash

# ==========================
# ===   aliases          ===
# ==========================

if [ -f ${IANUS}/shell/terminal/pawsey_aliases.sh ]; then
  . ${IANUS}/shell/terminal/pawsey_aliases.sh
fi

if [ -f ${BDOTDIR}/bash_aliases.sh ]; then
  . ${BDOTDIR}/bash_aliases.sh
fi

# ==========================
# ===  Prompt            ===
# ==========================

eval "$(starship init bash)"

# ==========================
# ===  Completion        ===
# ==========================

# Fuzzy finder (fzf)
[ -f ${IANUS}/shell/bash/fzf.bash ] && source ${IANUS}/shell/bash/fzf.bash

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

if [[ -r "/home/drivas/private/software/mcfly/mcfly.bash" ]]
then
  source "/home/drivas/private/software/mcfly/mcfly.bash"
fi

# ==========================
