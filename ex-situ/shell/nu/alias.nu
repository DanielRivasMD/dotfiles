# TODO: create a command to generate nushell aliases from source => babel

####################################################################################################
# nushell
####################################################################################################

# # open command
# alias nuopen = open
# alias open = ^open

# ls
alias ll = ls --long
alias lla = ls --long --all
alias lld = ls --long --all --du

####################################################################################################
# general aliases
####################################################################################################

# General aliases
alias .. = cd ..
alias ... = cd ../..
alias .... = cd ../../..
alias c = clear

####################################################################################################

# increase verbosity
alias cp = cp -v
alias mv = mv -v
alias rm = rm -v
alias mk = mkdir -v

####################################################################################################

# mplayer
alias mp = mplayer

####################################################################################################
# go toolLinks
####################################################################################################

# history
alias f = fillin

# lazy
alias lg = lazygit
alias ld = lazydocker
alias lm = lazynpm

####################################################################################################
# julia
####################################################################################################

# repl
alias jl = julia

####################################################################################################
# python
####################################################################################################

# BUG: source not workking 
# # enviroment
# alias activate = source venv/bin/activate

# package manager & replalias pip = pip3
alias python = python3

####################################################################################################
# rust toolLinks
####################################################################################################

# lazycli
alias lc = lazycli

# bat
alias man = batman

# broot
alias br = br --dates --sizes --permissions --hidden --git-ignored --show-git-info --sort-by-type-dirs-first

# gfold
alias gf = gfold

# gitui
alias gt = gitui

# hgrep
alias hg = hgrep

# mgit
alias mg = mgit

# pueue
alias pu = pueue
alias pd = pueued

# samesame
alias ss = samesame

# wordcrab
alias wc = wordcrab

# zellij
alias zj = zellij

# zoxide
alias zz = z -

# exa
alias e = eza --header --long --icons --classify --git --group
alias ea = e --all
alias er = e --sort=newest
alias ear = ea --sort=newest
alias et = ea --tree --level 2 --ignore-glob ".git" --group-directories-first

# lsd
alias l = lsd --long --classify
alias la = l --almost-all
alias lr = l --reverse --timesort
alias lar = la --reverse --timesort
alias lt = la --tree --ignore-glob ".git" --group-directories-first

####################################################################################################
