
# ==========================
# ===  General aliases   ===
# ==========================

# General aliases
alias c='clear'
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
# ===  Go toolLinks      ===
# ==========================


# ==========================
# ===  Rust toolLinks    ===
# ==========================

# aliases
alias als='aliases'
alias alr='clear && aliases rehash && aliases && echo "aliases reloaded"'
alias ald='clear && aliases directories'
alias al='aliases exec ./'
alias a='aliases exec ~/'

# exa
alias l='clear && exa --long --group-directories-first --classify --links --header --group'
alias la='clear && exa --long --group-directories-first --classify --links --header --group --all'
alias lr='clear && exa --long --group-directories-first --classify --links --header --sort=newest --group'
alias lar='clear && exa --long --group-directories-first --classify --links --header --sort=newest --group --all'

# samesame
alias ss='samesame'

# wordcrab
alias wc='wordcrab'

# ==========================
# ===  Shell functions   ===
# ==========================

# Wrapper for cd. Updates PROMPT every time 'cd' is called. Compatible with 'cl'
function cd() {
  builtin cd "$@" && set_prompt
}
export cd

# ==========================
# ===  Uppmax aliases    ===
# ==========================

#Uppmax aliases
alias jbian='jobinfo -u drivas'
alias sqbian='squeue -u drivas'

# ==========================
