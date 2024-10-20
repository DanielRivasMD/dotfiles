#!/bin/bash
####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# reload shell
source $HOME/.zshrc

####################################################################################################

# install deno
curl -fsSL https://deno.land/install.sh | sh

####################################################################################################
# install rust binaries
####################################################################################################

# cargo add ratatui
# atuin
# curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
cargo install atuin 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# bacon
cargo install --locked bacon 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# bartib
cargo install bartib 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# bat
cargo install --locked bat 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# bottom
cargo install bottom --locked 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# broot
cargo install --locked --features clipboard broot 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# cargo-benchcmp
# cargo-binstall
# cargo-cache
# cargo-check
# cargo-do
# cargo-edit
# cargo-expand
# cargo-geiger
# cargo-license
# cargo-make
# cargo-modules
# cargo-nextest
# cargo-outdated
# cargo-rdme
# cargo-release
# cargo-tarpaulin
# cargo-update
# cargo-watch

# cbs


# chess-tui


# colortty


# copo


# coreutils


# ddh


# du-dust


# dua-cli


# eva


# eza


# fd-find


# flamegraph


# gfold


# gifski


# git-delta


# git-journal


# gitoxide


# gitui


# halp


# hck


# hexyl


# hgrep


# htmlq


# hyperfine


# jless


# just


# kondo


# lazycli
cargo install --locked lazycli

# lsd


# mdcat


# melody_cli
cargo install melody_cli 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# mgit
cargo install mgit 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# monolith
cargo install monolith 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# navi
# TODO: update
# brew install navi 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# nomino
cargo install nomino 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# nu
cargo install nu 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# onefetch
cargo install onefetch 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# onehistory
cargo install onehistory 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# pastel
cargo install pastel 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# print_key
cargo install print_key 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# procs
cargo install procs 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# pueue
cargo install pueue --locked 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# ripgrep
cargo install ripgrep 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# ripgrep_all
cargo install ripgrep_all --locked 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# samesame
cargo install samesame 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# sccache
cargo install sccache --locked

# sd
cargo install sd

# sheldon
cargo install sheldon --locked

# spotify-tui
cargo install spotify-tui

# starship
cargo install starship --locked

# tauri
cargo install tauri-cli 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"

# tealdeer
cargo install tealdeer

# tock
cargo install tock

# tokei
cargo install --git https://github.com/XAMPPRocky/tokei.git tokei

# viu
cargo install viu

# watchexec-cli
cargo install watchexec-cli --locked

# wordcrab
cargo install wordcrab

# xcp
cargo install xcp

# xsv
cargo install xsv

# yazi
cargo install --locked yazi-fm yazi-cli

# zellij
cargo install zellij --locked

# zoxide
cargo install zoxide --locked

####################################################################################################
