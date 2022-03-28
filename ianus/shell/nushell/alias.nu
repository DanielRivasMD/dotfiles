################################################################################

# forked patches
alias pier = /Users/drivas/bin/forkedPatch/pier
alias rip = /Users/drivas/bin/forkedPatch/rip

# # open command
# alias nuopen = open
# alias open = ^open

# ls
alias ll = ls --long
alias lla = ls --long --all
alias lld = ls --long --all --du

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
alias e = exa --long --classify --links --git --header --group --icons
alias ea = exa --long --classify --links --git --header --group --icons --all
alias er = exa --long --classify --links --git --header --group --icons --sort=newest

alias ear = exa --long --classify --links --git --header --group --icons --all --sort=newest
alias eas = exa --long --classify --links --git --header --group --icons --all --sort=accessed --time accessed
alias eac = exa --long --classify --links --git --header --group --icons --all --sort=created --time created

alias eg = exa --long --classify --links --git --header --group --icons --group-directories-first
alias ega = exa --long --classify --links --git --header --group --icons --group-directories-first --all
alias egr = exa --long --classify --links --git --header --group --icons --group-directories-first --sort=newest

alias egar = exa --long --classify --links --git --header --group --icons --group-directories-first --all --sort=newest
alias egas = exa --long --classify --links --git --header --group --icons --group-directories-first --all --sort=accessed --time accessed
alias egac = exa --long --classify --links --git --header --group --icons --group-directories-first --all --sort=created --time created

alias et = exa --long --classify --links --git --header --group --icons --all --tree --level 2 --ignore-glob ".git" --group-directories-first
alias ed = exa --long --classify --links --git --header --group --icons --all --tree --level 2 --ignore-glob ".git" --only-dirs

# lsd
alias l = lsd --long --classify
alias lr = lsd --long --classify --reverse --timesort
alias lz = lsd --long --classify --reverse --sizesort

alias la = lsd --long --classify --almost-all
alias lar = lsd --long --classify --almost-all --reverse --timesort
alias laz = lsd --long --classify --almost-all --reverse --sizesort

alias lh = lsd --long --classify --recursive
alias lhr = lsd --long --classify --recursive --reverse --timesort
alias lhz = lsd --long --classify --recursive --reverse --sizesort

alias lha = lsd --long --classify --recursive --almost-all
alias lhar = lsd --long --classify --recursive --almost-all --reverse --timesort
alias lhaz = lsd --long --classify --recursive --almost-all --reverse --sizesort

alias lt = lsd --long --classify --group-dirs=first --tree
alias lta = lsd --long --classify --group-dirs=first --tree --almost-all

alias le = lsd --long --classify --extensionsort
alias lea = lsd --long --classify --extensionsort --almost-all

# # nu functions
# def nudown [] {fetch https://api.github.com/repos/nushell/nushell/releases | get assets | select name download_count}
# def nuver [] {version | pivot key value}

################################################################################
