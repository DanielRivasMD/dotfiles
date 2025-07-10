####################################################################################################
# osx default
####################################################################################################

# patch for screen C-q
stty -ixon

####################################################################################################
# path
####################################################################################################

# cargo
PATH=$PATH:$HOME/.cargo/bin

# go
export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g

# MySQL
PATH=$PATH:/usr/local/mysql/bin/

# python
PATH=$PATH:$HOME/.python/bin/

# links
PATH=$PATH:$HOME/bin/links/

# settings
PATH=$PATH:/usr/local/bin/
PATH=$PATH:/usr/local/sbin/

# lsp
PATH=$PATH:/opt/homebrew/opt/llvm/bin

export PATH

####################################################################################################
# language settings
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
# enviroment
####################################################################################################

# archives
export ARCHIVE="${HOME}/.archive"
export IN_SILICO="${ARCHIVE}/in-silico"
export EX_SITU="${ARCHIVE}/ex-situ"
export IN_SITU="${ARCHIVE}/in-situ"
export FN_SHELL="${EX_SITU}/shell/fn"
export ZSH_COMPLETION="${HOME}/.config/zsh_completion"

# bartib
export BARTIB_FILE="${HOME}/.config/bartib/db.bartib"

# broot
source "${HOME}/.config/broot/launcher/bash/br"

# editor
export VISUAL=micro
export EDITOR="$VISUAL"

# less
export LESSHISTFILE="-"

# pager
export PAGER=bat
export BAT_PAGER=less
export RCOLUMNS=$COLUMNS

# screen width
export MANWIDTH=175

# starship
export STARSHIP_CONFIG="${EX_SITU}/starship/osx_starship.toml"

# zellij
export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"
export ZELLIJ_CONFIG_FILE="${ZELLIJ_CONFIG_DIR}/config.kdl"

####################################################################################################

# shell functions
source "${FN_SHELL}/forge.sh"
source "${FN_SHELL}/path.sh"

####################################################################################################

# deno
. "${HOME}/.deno/env"

####################################################################################################

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/drivas/.bun/_bun" ] && source "/Users/drivas/.bun/_bun"

####################################################################################################
