####################################################################################################
# forked patches
####################################################################################################

alias pier='~/bin/forked/pier'

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
# python
####################################################################################################

alias pip='pip3'
alias python='python3'

####################################################################################################
# go tool links
####################################################################################################

alias f='fillin'
alias lzd='lazydocker'
alias lzg='lazygit'
alias lzn='lazynpm'

####################################################################################################
# rust tool links
####################################################################################################

# lazycli
alias lzc='lazycli'

# # bat
# alias man='batman'

# broot
alias br='br --dates --permissions --hidden --git-ignored --show-git-info'
alias bs='br --git-status'

# gfold
alias gf='gfold'

# gitui
alias gt='gitui'

# hgrep
alias hg='hgrep'

# mgit
alias mg='mgit'

# pueue
alias p='pueue'
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
