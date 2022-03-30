#!/usr/bin/env zsh

################################################################################

_call_broot() {
  broot --dates --sizes --permissions --hidden --show-gitignored --show-git-info
}

zle -N _call_broot

bindkey '^b' _call_broot

################################################################################
