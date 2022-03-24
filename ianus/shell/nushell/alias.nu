################################################################################

# TODO: update aliases to avoid collisions

# forked patches
alias pier = /Users/drivas/bin/forkedPatch/pier
alias rip = /Users/drivas/bin/forkedPatch/rip

# open command
alias nuopen = open
alias open = ^open

# ls
alias ln = ls --long
alias lna = ls --long --all
alias lnd = ls --long --all --du

# cd
alias .. = cd ..
alias ... = cd ../..
alias .... = cd ../../..

# lua tools
alias vim = nvim

# go tools
alias f = fillin
alias lzg = lazygit
alias lzd = lazydocker

# rust tools
alias br = broot --dates --sizes --permissions --hidden --show-gitignored --show-git-info
alias gt = gitui
alias gl = git-local-ignore
alias hg = hgrep
alias ss = samesame
alias wc = wordcrab
alias zz = cd -

# exa
alias l = exa --long --classify --links --git --header --group --icons
alias la = exa --long --classify --links --git --header --group --icons --all
alias lr = exa --long --classify --links --git --header --group --icons --sort=newest

alias lar = exa --long --classify --links --git --header --group --icons --all --sort=newest
alias las = exa --long --classify --links --git --header --group --icons --all --sort=accessed --time accessed
alias lac = exa --long --classify --links --git --header --group --icons --all --sort=created --time created

alias lg = exa --long --classify --links --git --header --group --icons --group-directories-first
alias lga = exa --long --classify --links --git --header --group --icons --group-directories-first --all
alias lgr = exa --long --classify --links --git --header --group --icons --group-directories-first --sort=newest

alias lgar = exa --long --classify --links --git --header --group --icons --group-directories-first --all --sort=newest
alias lgas = exa --long --classify --links --git --header --group --icons --group-directories-first --all --sort=accessed --time accessed
alias lgac = exa --long --classify --links --git --header --group --icons --group-directories-first --all --sort=created --time created

alias lt = exa --long --classify --links --git --header --group --icons --all --tree --level 2 --ignore-glob ".git" --group-directories-first
alias ld = exa --long --classify --links --git --header --group --icons --all --tree --level 2 --ignore-glob ".git" --only-dirs

# # lsd
# alias ls = lsd --long --classify
# alias lsr = lsd --long --classify --reverse --timesort
# alias lsz = lsd --long --classify --reverse --sizesort

# alias lsa = lsd --long --classify --almost-all
# alias lsar = lsd --long --classify --almost-all --reverse --timesort
# alias lsaz = lsd --long --classify --almost-all --reverse --sizesort

# alias lss = lsd --long --classify --recursive
# alias lssr = lsd --long --classify --recursive --reverse --timesort
# alias lssz = lsd --long --classify --recursive --reverse --sizesort

# alias lssa = lsd --long --classify --recursive --almost-all
# alias lssar = lsd --long --classify --recursive --almost-all --reverse --timesort
# alias lssaz = lsd --long --classify --recursive --almost-all --reverse --sizesort

# alias lst = lsd --long --classify --group-dirs=first --tree
# alias lsta = lsd --long --classify --group-dirs=first --tree --almost-all

# alias lse = lsd --long --classify --extensionsort
# alias lsea = lsd --long --classify --extensionsort --almost-all

# # nu functions
# def nudown [] {fetch https://api.github.com/repos/nushell/nushell/releases | get assets | select name download_count}
# def nuver [] {version | pivot key value}

################################################################################
