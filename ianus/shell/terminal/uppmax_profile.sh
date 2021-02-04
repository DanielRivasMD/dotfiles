
# ==========================
# ===  Uppmax default    ===
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
# ===  Archives          ===
# ==========================

export ARCHIVE=${HOME}/.archive/
export IANUS=${ARCHIVE}ianus/
export CERBERUS=${ARCHIVE}cerberus/

# ==========================
# ===  tmux check        ===
# ==========================

# Manage tmux
module load tmux
[ -z "$TMUX" ] && { tmux a || exec /home/drivas/bin/muxed Remote && exit; }

# # ==========================
# # ===  BLAST database    ===
# # ==========================
#
# # BLAST database
# export BLASTDB=/sw/data/uppnex/blast_databases

# ==========================
# ===  Go Path           ===
# ==========================

export GOPATH=$HOME/.go/

# ==========================
# ===  Cargo-Rust Path   ===
# ==========================

PATH=$PATH:$HOME/.cargo/bin

# ==========================
# ===  Path              ===
# ==========================

# PATH settings
PATH=$PATH:$HOME/bin

# ==========================
# ===  Export            ===
# ==========================

export PATH
export STARSHIP_CONFIG=${IANUS}starship/uppmax_starship.toml

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
# ===  Screen width      ===
# ==========================

export MANWIDTH=175

# ==========================
# ===  Pager              ===
# ==========================

export PAGER=bat
export BAT_PAGER=less

# ==========================
# ===  Pier              ===
# ==========================

export PIER="${IANUS}pier/"

# ==========================
# ===  Tree              ===
# ==========================

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

# ==========================
