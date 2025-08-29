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
alias jl='julia --project'

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

# aliases
alias aa='aliases add'
alias al='aliases list'
alias ar='aliases remove'

# lazycli
alias lc='lazycli'

# bat
alias man='batman'

# broot
alias br='br --dates --sizes --permissions --hidden --git-ignored --show-git-info --sort-by-type-dirs-first'

# gfold
alias gf='gfold'

# hgrep
alias hg='hgrep'

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# zoxide
alias zz='z -'

# eza
alias e='eza --header --long --icons --classify --git --group'
alias ea='e --all'
alias er='e --sort=newest'
alias ear='ea --sort=newest'
alias et='ea --tree --level 2 --ignore-glob ".git" --group-directories-first'

####################################################################################################
