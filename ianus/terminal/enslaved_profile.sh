
# ==========================
# ===  Uppmax aliases    ===
# ==========================

# Load General aliases
if [ -f ~/.terminal_aliases ]; then
  . ~/.terminal_aliases
fi

# ==========================

# modules are used to manage user environment and software packages
if [ -f /etc/profile.modules ]
then
  . /etc/profile.modules
# load a default environment
# module load sge
# PGI compilers
# module load pgi
fi

# ==========================

# Check if I am interactive and proceed
[[ $- != *i* ]] && return

# ==========================
# ===  tmux check        ===
# ==========================

# Manage tmux
module load tmux
if [[ $HOSTNAME == *"bianca"* ]]
then
  module load zsh
fi


[ -z "$TMUX" ] && { tmux a || exec /home/drivas/bin/muxed Remote && exit; }


# # ==========================
# # ===  BLAST database    ===
# # ==========================
#
# # BLAST database
# export BLASTDB=/sw/data/uppnex/blast_databases

# ==========================
# ===  General settings  ===
# ==========================


# ==========================
# ===  Go Path           ===
# ==========================

# GOPATH settings

# ==========================
# ===  Cargo-Rust Path   ===
# ==========================

PATH=$PATH:$HOME/.cargo/bin

# ==========================
# ===  Path              ===
# ==========================

# PATH settings
PATH=$PATH:$HOME/bin

export PATH

# ==========================
# ===  Less              ===
# ==========================

export LESSHISTFILE="-"

# ==========================
# ===  Editor            ===
# ==========================

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"

# ==========================
# ===  Pager              ===
# ==========================

export PAGER=most

# ==========================
# ===  Pier              ===
# ==========================

PIER="${HOME}/.archive/pier/"
export PIER

# ==========================
# ===  Tree              ===
# ==========================

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

# ==========================
