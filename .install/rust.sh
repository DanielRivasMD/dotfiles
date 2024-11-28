#!/bin/bash
####################################################################################################

# archive
archDir="$HOME/.archive"

####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 1>> "${archDir}/log/rust.out" 2>> "${archDir}/log/rust.err"

# reload shell
source "${archDir}/ex-situ/shell/zsh/vernacular_zshrc.sh"

# ####################################################################################################

# # install deno
# curl -fsSL https://deno.land/install.sh | sh 1>> "${archDir}/log/cargo.out" 2>> "${archDir}/log/cargo.err"

# # install deployctl
# deno install -A jsr:@deno/deployctl --global 1>> "${archDir}/log/cargo.out" 2>> "${archDir}/log/cargo.err"


# ####################################################################################################
# # install rust binaries
# ####################################################################################################

# # cargo add ratatui
# # atuin
# # curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# cargo install {\
#   atuin;                                                                       # atuin
#   bacon --locked;                                                              # bacon
#   bartib;                                                                      # bartib
#   bat --locked;                                                                # bat
#   bottom --locked;                                                             # bottom
#   broot --locked --features clipboard;                                         # broot
# # cargo-benchcmp
# # cargo-binstall
# # cargo-cache
# # cargo-check
# # cargo-do
# # cargo-edit
# # cargo-expand
# # cargo-geiger
# # cargo-license
# # cargo-make
# # cargo-modules
# # cargo-nextest
# # cargo-outdated
# # cargo-rdme
# # cargo-release
# # cargo-tarpaulin
# # cargo-update
# # cargo-watch

# # cbs


# # chess-tui


# # colortty


# # copo


# # coreutils


# # ddh

#   diease_cli;                                                                  # diesel

# # du-dust


# # dua-cli


# # eva


# # eza


# # fd-find


# # flamegraph


# # gfold


# # gifski


# # git-delta


# # git-journal


# # gitoxide


# # gitui


# # halp


# # hck


# # hexyl


# # hgrep


# # htmlq


# # hyperfine


# # jless


# # just


# # kondo


#   lazycli --locked;                                                            # lazycli
# # lsd


# # mdcat


#   melody_cli;                                                                  # melody_cli
#   mgit;                                                                        # mgit
#   monolith;                                                                    # monolith
#   navi;                                                                        # navi
#   nomino;                                                                      # nomino
#   nu;                                                                          # nu
#   onefetch;                                                                    # onefetch
#   onehistory;                                                                  # onehistory
#   pastel;                                                                      # pastel
#   print_key;                                                                   # print_key
#   procs;                                                                       # procs
#   pueue --locked;                                                              # pueue
#   ripgrep;                                                                     # ripgrep
#   ripgrep_all --locked;                                                        # ripgrep_all
#   samesame;                                                                    # samesame
#   sccache --locked;                                                            # sccache
#   sd;                                                                          # sd
#   sheldon --locked;                                                            # sheldon
#   spotify-tui;                                                                 # spotify-tui
#   starship --locked;                                                           # starship
#   tauri-cli;                                                                   # tauri
#   tealdeer;                                                                    # tealdeer
#   tock;                                                                        # tock
#   tokei --git https://github.com/XAMPPRocky/tokei.git;                         # tokei
#   viu;                                                                         # viu
#   watchexec-cli --locked;                                                      # watchexec-cli
#   wordcrab;                                                                    # wordcrab
#   xcp;                                                                         # xcp
#   xsv;                                                                         # xsv
#   yazi-cli --locked yazi-fm;                                                   # yazi
#   zellij --locked;                                                             # zellij
#   zoxide --locked;                                                             # zoxide
# } 1>> "${archDir}/log/cargo.out" 2>> "${archDir}/log/cargo.err"

# ####################################################################################################\ 
