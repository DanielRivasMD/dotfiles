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

# micro
alias mc = micro

####################################################################################################
# julia
####################################################################################################

# repl
alias jl = julia --project

####################################################################################################
# python
####################################################################################################

# calendar

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

# hgrep
alias hg = hgrep

# samesame
alias ss = samesame

# wordcrab
alias wc = wordcrab

# zoxide
alias zz = z -

# eza
alias e = eza --header --long --icons --classify --git --group
alias ea = e --all
alias er = e --sort=newest
alias ear = ea --sort=newest
alias et = ea --tree --level 2 --ignore-glob ".git" --group-directories-first

####################################################################################################
