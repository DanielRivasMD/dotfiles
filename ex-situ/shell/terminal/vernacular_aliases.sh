####################################################################################################
# forked patches
####################################################################################################

####################################################################################################
# general aliases
####################################################################################################

# general aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'

####################################################################################################

# increase verbosity
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mk='mkdir -pv'

####################################################################################################

# mplayer
alias mp='mplayer'

####################################################################################################
# go tool links
####################################################################################################

# history
alias f='fillin'

# lazy
alias ld='lazydocker'
alias lg='lazygit'
alias lm='lazynpm'

# micro
alias mc='micro'

# tabularasa
alias tr='tabularasa'

####################################################################################################
# julia
####################################################################################################

# repl
alias jl='julia'

####################################################################################################
# python
####################################################################################################

# enviroment
alias activate='source venv/bin/activate'

# calendar

# package manager & repl
alias pip='pip3'
alias python='python3'

####################################################################################################
# rust tool links
####################################################################################################

# lazycli
alias lc='lazycli'

# bat
alias man='batman'

# broot
alias br='br --dates --sizes --permissions --hidden --git-ignored --show-git-info --sort-by-type-dirs-first'

# gfold
alias gf='gfold'

# gitui
alias gt='gitui'

# hgrep
alias hg='hgrep'

# mgit
alias mg='mgit'

# pueue
alias pu='pueue'
alias pd='pueued'

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# zellij
alias zj='zellij'

# zoxide
alias zz='z -'

# eza
alias e='eza --header --long --icons --classify --git --group'
alias ea='e --all'
alias er='e --sort=newest'
alias ear='ea --sort=newest'
alias et='ea --tree --level 2 --ignore-glob ".git" --group-directories-first'

# lsd
alias l='lsd --header --long --classify --git'
alias la='l --almost-all'
alias lr='l --timesort --reverse'
alias lar='la --timesort --reverse'
alias lt='la --tree --ignore-glob ".git" --group-directories-first'

####################################################################################################
