
# ==========================
# ===  Uppmax default    ===
# ==========================

# Modules, activate the module command
case "$0" in
  -sh|sh|*/sh)	modules_shell=sh ;;
  -ksh|ksh|*/ksh)	modules_shell=ksh ;;
  -zsh|zsh|*/zsh)	modules_shell=zsh ;;
  -bash|bash|*/bash)	modules_shell=bash ;;
esac
module() { eval `/usr/local/Modules/$MODULE_VERSION/bin/modulecmd $modules_shell $*`; }

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

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

if [ -f ${IANUS}/shell/terminal/uppmax_aliases.sh ]; then
  . ${IANUS}/shell/terminal/uppmax_aliases.sh
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

eval "$(~/.cargo/bin/zoxide init bash)"

# ==========================
# ===  McFly             ===
# ==========================

if [[ -r "/home/drivas/private/software/mcfly/mcfly.bash" ]]
then
  source "/home/drivas/private/software/mcfly/mcfly.bash"
fi

# ==========================
