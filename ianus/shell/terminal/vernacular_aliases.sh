
# ==========================
# ===  # Forked patches  ===
# ==========================

alias copo='~/bin/forkedPatch/copo'
alias pier='~/bin/forkedPatch/pier'
alias rip='~/bin/forkedPatch/rip'
alias git-local-ignore='~/bin/forkedPatch/git-local-ignore'

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

# mplayer
alias mp='mplayer'

# ==========================

# Enable aliases to be sudo'ed
alias sudo='sudo '

# ==========================
# ===  Go toolLinks      ===
# ==========================

alias f='fillin'
alias lzg='lazygit'
alias lzd='lazydocker'

# ==========================
# ===  Rust toolLinks    ===
# ==========================

# lazycli
alias lzc='lazycli'

# bat
alias man=batman

# broot
alias br='br --dates --sizes --permissions --hidden --show-gitignored --show-git-info'

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

# exa
alias lg='exa --long --classify --links --git --header --group --icons'
alias lga='lg --all'
alias lgr='lg --sort=newest'

alias lgar='lga --sort=newest'
alias lgsa='lga --sort=accessed --time accessed'
alias lgsc='lga --sort=created --time created'

alias lgg='lg --group-directories-first'
alias lgga='lgg --all'
alias lggr='lgg --sort=newest'

alias lggar='lgga --sort=newest'
alias lggsa='lgga --sort=accessed --time accessed'
alias lggsc='lgga --sort=created --time created'

alias lgt='lga --tree --level 2 --ignore-glob ".git" --group-directories-first'
alias lgd='lga --tree --level 2 --ignore-glob ".git" --only-dirs'

# lsd
alias l='lsd --long --classify'
alias lr='l --reverse --timesort'
alias lss='l --reverse --sizesort'

alias la='l --almost-all'
alias lar='la --reverse --timesort'
alias las='la --reverse --sizesort'

alias ls='l --recursive'
alias lsr='ls --reverse --timesort'

alias lsa='ls --almost-all'
alias lsar='lsa --reverse --timesort'

alias lt='l --group-dirs=first --tree'
alias lta='lt --almost-all'

alias le='l --extensionsort'
alias lea='le --almost-all'

# ==========================
