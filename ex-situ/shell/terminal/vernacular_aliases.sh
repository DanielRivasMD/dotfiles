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
alias cal='khal calendar'
alias cal-az='khal calendar --include-calendar AZ'
alias cal-astro='khal calendar --include-calendar Astronomy'
alias cal-funding='khal calendar --include-calendar Funding'
alias cal-igneous='khal calendar --include-calendar Igneous'
alias cal-kukulkan='khal calendar --include-calendar Kukulkan'
alias cal-personal='khal calendar --include-calendar Personal'
alias cal-sports='khal calendar --include-calendar Sports'
alias cal-work='khal calendar --exclude-calendar Astronomy --exclude-calendar Sports --exclude-calendar Personal'
alias ical='ikhal'

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
