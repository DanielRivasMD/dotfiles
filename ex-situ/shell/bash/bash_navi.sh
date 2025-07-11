#!/usr/bin/env bash

####################################################################################################

# Helper function to launch navi in floating/fuzzy mode
_call_navi() {
  navi --print | fzf --ansi --prompt="navi > " | bash
}

# Bash key binding: Ctrl+o to invoke navi
bind -x '"\C-o": _call_navi'

####################################################################################################
