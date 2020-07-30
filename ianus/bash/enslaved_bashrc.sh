
# ==========================
# ===  Uppmax default		 ===
# ==========================

# Modules, activate the module command
case "$0" in
  -sh|sh|*/sh)	modules_shell=sh ;;
  -ksh|ksh|*/ksh)	modules_shell=ksh ;;
  -zsh|zsh|*/zsh)	modules_shell=zsh ;;
  -bash|bash|*/bash)	modules_shell=bash ;;
esac
module() { eval `/usr/local/Modules/$MODULE_VERSION/bin/modulecmd $modules_shell $*`; }

# ==========================

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Load General profile
if [ -f ~/.terminal_profile ]; then
  . ~/.terminal_profile
fi

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

source ~/.bash_prompt
set_prompt

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
