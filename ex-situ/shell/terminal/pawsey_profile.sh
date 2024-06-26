####################################################################################################
# Pawsey default
####################################################################################################

# patch for screen C-q
stty -ixon

####################################################################################################
# Archives
####################################################################################################

export ARCHIVE=${HOME}/.archive
export EX_SITU=${ARCHIVE}/ex-situ

# ####################################################################################################
# # BLAST database
# ####################################################################################################
#
# # BLAST database
# export BLASTDB=/sw/data/uppnex/blast_databases

####################################################################################################
# Go Path
####################################################################################################

export GOPATH=$HOME/.go/

# ####################################################################################################
# # Cargo-Rust Path
# ####################################################################################################
#
# PATH=$PATH:$HOME/.cargo/bin

####################################################################################################
# Path
####################################################################################################

# PATH settings
PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/bin/satsuma2

####################################################################################################
# Export
####################################################################################################

export PATH
export STARSHIP_CONFIG=${EX_SITU}/starship/pawsey_starship.toml

####################################################################################################
# Less
####################################################################################################

export LESSHISTFILE="-"

####################################################################################################
# Editor
####################################################################################################

# Editor
export VISUAL=micro
export EDITOR="$VISUAL"

####################################################################################################
# Screen width
####################################################################################################

export MANWIDTH=175

####################################################################################################
# Pager
####################################################################################################

export PAGER=bat
export BAT_PAGER=less

####################################################################################################
# Pier
####################################################################################################

export PIER="${EX_SITU}/pier/"

####################################################################################################
# Tree
####################################################################################################

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

####################################################################################################
