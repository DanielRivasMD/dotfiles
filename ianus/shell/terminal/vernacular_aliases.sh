
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
alias lg='lazygit'

# ==========================
# ===  Rust toolLinks    ===
# ==========================

# bat
alias man=batman

# broot
alias br='br --dates --sizes --permissions --hidden --show-gitignored --show-git-info'

# exa
alias lx='exa --long --classify --links --git --header --group --icons'
alias lxa='lx --all'
alias lxr='lx --sort=newest'

alias lxar='lxa --sort=newest'
alias lxsa='lxa --sort=accessed --time accessed'
alias lxsc='lxa --sort=created --time created'

alias lxg='lx --group-directories-first'
alias lxga='lxg --all'
alias lxgr='lxg --sort=newest'

alias lxgar='lxga --sort=newest'
alias lxgsa='lxga --sort=accessed --time accessed'
alias lxgsc='lxga --sort=created --time created'

alias lxt='lxa --tree --level 2 --ignore-glob ".git" --group-directories-first'
alias lxd='lxa --tree --level 2 --ignore-glob ".git" --only-dirs'

# gitui
alias gt='gitui'

# git-local-ignore
alias gl='git-local-ignore'

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

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# zoxide
alias zz='z -'

# ==========================
