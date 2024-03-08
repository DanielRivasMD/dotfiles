####################################################################################################
# vernacular default
####################################################################################################

# patch for screen C-q
stty -ixon

####################################################################################################
#  archives
####################################################################################################

export ARCHIVE="${HOME}/.archive"
export IN_SILICO="${ARCHIVE}/in-silico"
export EX_SITU="${ARCHIVE}/ex-situ"
export IN_SITU="${ARCHIVE}/in-situ"

####################################################################################################
#  language settings
####################################################################################################

LANG="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
export LANGUAGE="en_US"
export LC_ALL="en_US.UTF-8"

####################################################################################################
#  go path
####################################################################################################

export GOPATH="$HOME/.go/"
export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
export GOROOT="$(brew --prefix)/Cellar/go/1.22.0/libexec"

####################################################################################################
#  cargo-rust path
####################################################################################################

PATH=$PATH:$HOME/.cargo/bin

####################################################################################################
#  MySQL path
####################################################################################################

PATH=$PATH:/usr/local/mysql/bin/

####################################################################################################
#  path
####################################################################################################

# path settings
PATH=$PATH:/usr/local/bin/
PATH=$PATH:/usr/local/sbin/
PATH=$PATH:$GOPATH/bin/
PATH=$PATH:$HOME/bin/cargo/
PATH=$PATH:$HOME/bin/go/
PATH=$PATH:$HOME/bin/links/

export PATH

####################################################################################################
# starship
####################################################################################################

export STARSHIP_CONFIG="${EX_SITU}/starship/vernacular_starship.toml"

####################################################################################################
# zellij
####################################################################################################

export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"
export ZELLIJ_CONFIG_FILE="${ZELLIJ_CONFIG_DIR}/config.kdl"

####################################################################################################
# less
####################################################################################################

export LESSHISTFILE="-"

####################################################################################################
# editor
####################################################################################################

# editor
export VISUAL=micro
export EDITOR="$VISUAL"

####################################################################################################
# screen width
####################################################################################################

export MANWIDTH=175

####################################################################################################
# pager
####################################################################################################

export PAGER=bat
export BAT_PAGER=less
export RCOLUMNS=$COLUMNS

####################################################################################################
# bartib
####################################################################################################

export BARTIB_FILE="${HOME}/.config/bartib/db.bartib"

####################################################################################################
# pier
####################################################################################################

export PIER="${EX_SITU}/pier"

####################################################################################################
# broot
####################################################################################################

source "${HOME}/.config/broot/launcher/bash/br"

####################################################################################################
# shell functions
####################################################################################################

source "${EX_SITU}/shell/terminal/shell_func.sh"

####################################################################################################