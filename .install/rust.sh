#!/bin/bash
####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# reload shell
source $HOME/.zshrc

####################################################################################################

# install deno
curl -fsSL https://deno.land/install.sh | sh

# install deployctl
deno install -A jsr:@deno/deployctl --global


####################################################################################################
# install rust binaries
####################################################################################################

# cargo add ratatui
# atuin
# curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
{ \
  cargo install atuin;                                                         # atuin
  cargo install --locked bacon;                                                # bacon
  cargo install bartib;                                                        # bartib
  cargo install --locked bat;                                                  # bat
  cargo install bottom --locked;                                               # bottom
  cargo install --locked --features clipboard broot;                           # broot
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


  cargo install --locked lazycli;                                              # lazycli
# lsd


# mdcat


  cargo install melody_cli;                                                    # melody_cli
  cargo install mgit;                                                          # mgit
  cargo install monolith;                                                      # monolith
  brew install navi;                                                           # navi
  cargo install nomino;                                                        # nomino
  cargo install nu;                                                            # nu
  cargo install onefetch;                                                      # onefetch
  cargo install onehistory;                                                    # onehistory
  cargo install pastel;                                                        # pastel
  cargo install print_key;                                                     # print_key
  cargo install procs;                                                         # procs
  cargo install pueue --locked;                                                # pueue
  cargo install ripgrep;                                                       # ripgrep
  cargo install ripgrep_all --locked;                                          # ripgrep_all
  cargo install samesame;                                                      # samesame
  cargo install sccache --locked;                                              # sccache
  cargo install sd;                                                            # sd
  cargo install sheldon --locked;                                              # sheldon
  cargo install spotify-tui;                                                   # spotify-tui
  cargo install starship --locked;                                             # starship
  cargo install tauri-cli;                                                     # tauri
  cargo install tealdeer;                                                      # tealdeer
  cargo install tock;                                                          # tock
  cargo install --git https://github.com/XAMPPRocky/tokei.git tokei;           # tokei
  cargo install viu;                                                           # viu
  cargo install watchexec-cli --locked;                                        # watchexec-cli
  cargo install wordcrab;                                                      # wordcrab
  cargo install xcp;                                                           # xcp
  cargo install xsv;                                                           # xsv
  cargo install --locked yazi-fm yazi-cli;                                     # yazi
  cargo install zellij --locked;                                               # zellij
  cargo install zoxide --locked;                                               # zoxide
} 1>> "${archDir}/log/cargo_out.tt" 2>> "${archDir}/log/cargo_err.txt          "

####################################################################################################\ 
