####################################################################################################
# General aliases
####################################################################################################

# General aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c=clear

####################################################################################################

# increase verbosity
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias mkd="mkdir -pv"

# hgrep
alias hg='hgrep'

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# zoxide
alias zz='z -'

# exa
alias e='exa --long --classify --links --git --header --group --icons'
alias ea='e --all'
alias er='e --sort=newest'

alias ear='ea --sort=newest'
alias eas='ea --sort=accessed --time accessed'
alias eac='ea --sort=created --time created'

alias eg='e --group-directories-first'
alias ega='eg --all'
alias egr='eg --sort=newest'

alias egar='ega --sort=newest'
alias egas='ega --sort=accessed --time accessed'
alias egac='ega --sort=created --time created'

alias et='ea --tree --level 2 --ignore-glob ".git" --group-directories-first'
alias ed='ea --tree --level 2 --ignore-glob ".git" --only-dirs'

# lsd
alias l='lsd --long --classify'
alias lr='l --reverse --timesort'
alias lz='l --reverse --sizesort'

alias la='l --almost-all'
alias lar='la --reverse --timesort'
alias laz='la --reverse --sizesort'

alias lh='l --recursive'
alias lhr='lh --reverse --timesort'
alias lhz='lh --reverse --sizesort'

alias lha='lh --almost-all'
alias lhar='lha --reverse --timesort'
alias lhaz='lha --reverse --sizesort'

alias lt='l --group-dirs=first --tree'
alias lta='lt --almost-all'

alias le='l --extensionsort'
alias lea='le --almost-all'

####################################################################################################
