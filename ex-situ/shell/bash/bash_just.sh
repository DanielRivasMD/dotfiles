#!/usr/bin/env bash

####################################################################################################
# bash_just.sh — Bindings and helpers for justfile tasks

# Helper function to run just with fuzzy selection
_call_just() {
  just --summary | fzf --prompt="just > " --height=40% | awk '{print $1}' | xargs just
}

# Bash key binding: Ctrl+g to invoke just picker
bind -x '"\C-g": _call_just'

####################################################################################################
