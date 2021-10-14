
# ==========================
# ===  General aliases   ===
# ==========================

# General aliases
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
# ===  Go toolLinks      ===
# ==========================


# ==========================
# ===  Rust toolLinks    ===
# ==========================

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# zoxide
alias zz='z -'

# exa
alias l='exa --long --classify --links --git --header --group --icons'
alias la='l --all'
alias lr='l --sort=newest'

alias lar='la --sort=newest'
alias las='la --sort=accessed --time accessed'
alias lac='la --sort=created --time created'

alias lg='l --group-directories-first'
alias lga='lg --all'
alias lgr='lg --sort=newest'

alias lgar='lga --sort=newest'
alias lgas='lga --sort=accessed --time accessed'
alias lgac='lga --sort=created --time created'

alias lt='la --tree --level 2 --ignore-glob ".git" --group-directories-first'
alias ld='la --tree --level 2 --ignore-glob ".git" --only-dirs'

# lsd
alias ls='lsd --long --classify'
alias lsr='ls --reverse --timesort'
alias lss='ls --reverse --sizesort'

alias lsa='ls --almost-all'
alias lsar='lsa --reverse --timesort'
alias lsas='lsa --reverse --sizesort'

alias lss='ls --recursive'
alias lssr='lss --reverse --timesort'

alias lssa='lss --almost-all'
alias lssar='lssa --reverse --timesort'

alias lst='ls --group-dirs=first --tree'
alias lsta='lst --almost-all'

alias lse='ls --extensionsort'
alias lsea='lse --almost-all'

# ==========================
# ===  Pawsey aliases    ===
# ==========================

# ==========================
