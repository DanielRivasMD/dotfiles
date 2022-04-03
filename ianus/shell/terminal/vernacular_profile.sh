####################################################################################################
# Vernacular default
####################################################################################################

# patch for screen C-q
stty -ixon

####################################################################################################
#  Archives
####################################################################################################

export ARCHIVE=${HOME}/.archive
export IANUS=${ARCHIVE}/ianus
export CERBERUS=${ARCHIVE}/cerberus

####################################################################################################
#  Language settings
####################################################################################################

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

####################################################################################################
#  Go Path
####################################################################################################

export GOPATH=$HOME/.go/

####################################################################################################
#  Cargo-Rust Path
####################################################################################################

PATH=$PATH:$HOME/.cargo/bin

####################################################################################################
#  Dart Path
####################################################################################################

PATH=$PATH:/usr/local/opt/dart/libexec/

####################################################################################################
#  MySQL Path
####################################################################################################

PATH=$PATH:/usr/local/mysql/bin/

####################################################################################################
#  Path
####################################################################################################

# PATH settings
PATH=$PATH:/usr/local/bin/
PATH=$PATH:/usr/local/sbin/
PATH=$PATH:${GOPATH}bin/
PATH=$PATH:$HOME/bin/cargoTools/
PATH=$PATH:$HOME/bin/goTools/
PATH=$PATH:$HOME/bin/toolLinks/

####################################################################################################
#  Export
####################################################################################################

export PATH
export STARSHIP_CONFIG=${IANUS}/starship/vernacular_starship.toml
export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij
export ZELLIJ_CONFIG_FILE=${ZELLIJ_CONFIG_DIR}/config.yml

####################################################################################################
#  Less
####################################################################################################

export LESSHISTFILE="-"

####################################################################################################
#  Editor
####################################################################################################

# Editor
export VISUAL=micro
export EDITOR="$VISUAL"

####################################################################################################
#  Screen width
####################################################################################################

export MANWIDTH=175

####################################################################################################
#  Pager
####################################################################################################

export PAGER=bat
export BAT_PAGER=less
export RCOLUMNS=$COLUMNS

####################################################################################################
#  Pier
####################################################################################################

export PIER="${IANUS}/pier/"

####################################################################################################
#  Broot
####################################################################################################

source ${HOME}/.config/broot/launcher/bash/br

####################################################################################################
#  Tree
####################################################################################################

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

####################################################################################################
#  Shell functions
####################################################################################################

# Rmarkdown knit
function knit() {
  R --slave -e "rmarkdown::render('$1')" > /dev/null
}

####################################################################################################
