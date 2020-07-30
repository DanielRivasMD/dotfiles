
# ==========================
# ===  General aliases   ===
# ==========================

# Load General aliases
if [ -f ~/.terminal_aliases ]; then
  . ~/.terminal_aliases
fi

# ==========================
# ===  General settings  ===
# ==========================

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# ==========================
# ===  Language settings ===
# ==========================

# Language settings
LANG=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
export LANGUAGE=en_US
export LC_ALL=en_US.UTF-8

# ==========================
# ===  Go Path           ===
# ==========================

# GOPATH settings
GOPATH=$HOME/.go/

# ==========================
# ===  Cargo-Rust Path   ===
# ==========================

PATH=$PATH:$HOME/.cargo/bin

# ==========================
# ===  Dart Path         ===
# ==========================

PATH=$PATH:/usr/local/opt/dart/libexec/

# ==========================
# ===  MySQL Path        ===
# ==========================

PATH=$PATH:/usr/local/mysql/bin/

# ==========================
# ===  Path              ===
# ==========================

# PATH settings
PATH=$PATH:/usr/local/bin/
PATH=$PATH:/usr/local/sbin/
PATH=$PATH:${GOPATH}bin/
PATH=$PATH:$HOME/bin/toolLinks/
PATH=$PATH:$HOME/bin/cargoTools/

# ==========================
# ===  Export            ===
# ==========================

export GOPATH
export PATH

# ==========================
# ===  Less              ===
# ==========================

export LESSHISTFILE="-"

# ==========================
# ===  Editor            ===
# ==========================

# Editor
export VISUAL=micro
export EDITOR="$VISUAL"

# ==========================
# ===  Screen width      ===
# ==========================

MANWIDTH=175
export MANWIDTH

# ==========================
# ===  Pier              ===
# ==========================

PIER="${HOME}/.archive/ianus/pier/"
export PIER

# ==========================
# ===  Broot             ===
# ==========================

source /Users/drivas/Library/Preferences/org.dystroy.broot/launcher/bash/br

# ==========================
# ===  Tmux              ===
# ==========================

TMUX_PLUGIN_MANAGER_PATH="${HOME}/.archive/ianus/tmux/"
export TMUX_PLUGIN_MANAGER_PATH

# ==========================
# ===  Tree              ===
# ==========================

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

# ==========================
