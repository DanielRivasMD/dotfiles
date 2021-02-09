
# ==========================
# ===  # Forked patches  ===
# ==========================

alias aliases='clear && ~/bin/forkedPatch/aliases'
alias copo='~/bin/forkedPatch/copo'
alias pier='clear && ~/bin/forkedPatch/pier'
alias rip='clear && ~/bin/forkedPatch/rip'

# ==========================
# ===  General aliases   ===
# ==========================

# General aliases
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ==========================

# increase verbosity
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias mkd="mkdir -pv"

# ==========================

# mplayer
alias mp='mplayer'

# ==========================

# Enable aliases to be sudo'ed
alias sudo='sudo '

# ==========================
# ===  Go toolLinks      ===
# ==========================

alias lg='lazygit'

# ==========================
# ===  Rust toolLinks    ===
# ==========================

# aliases
alias als='aliases'
alias alr='clear && aliases rehash && aliases && echo "aliases reloaded"'
alias ald='clear && aliases directories'
alias al='aliases exec ./'
alias a='aliases exec ~/'

# bat
alias man=batman

# broot
alias brf='br --dates --sizes --permissions --hidden --show-gitignored --show-git-info'

# exa
alias l='clear && exa --long --group-directories-first --classify --links --git --header --group'
alias la='clear && exa --long --group-directories-first --classify --links --git --header --group --all'
alias lr='clear && exa --long --group-directories-first --classify --links --git --header --sort=newest --group'
alias lar='clear && exa --long --group-directories-first --classify --links --git --header --sort=newest --group --all'

# gitui
alias gt='gitui'

# git-local-ignore
alias gl='git-local-ignore'

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# zoxide
alias zz='z -'

# ==========================
