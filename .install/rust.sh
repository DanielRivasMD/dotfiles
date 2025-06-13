####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# reload shell
source "$HOME/.archive/ex-situ/shell/zsh/osx_zshrc.sh"

####################################################################################################

# cargo add ratatui

####################################################################################################
# install rust binaries
####################################################################################################

curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh -s -- -y     # atuin
cargo install bacon --locked;                                                  # bacon
cargo install bartib;                                                          # bartib
cargo install bat --locked;                                                    # bat
cargo install bottom --locked;                                                 # bottom
cargo install broot --locked --features clipboard;                             # broot
cargo install cargo-benchcmp;                                                  #
cargo install cargo-binstall;                                                  #
cargo install cargo-cache;                                                     #
cargo install cargo-check;                                                     #
cargo install cargo-do;                                                        #
cargo install cargo-edit;                                                      #
cargo install cargo-expand;                                                    #
cargo install cargo-geiger;                                                    #
cargo install cargo-license;                                                   #
cargo install cargo-make;                                                      #
cargo install cargo-modules;                                                   #
cargo install cargo-nextest;                                                   #
cargo install cargo-outdated;                                                  #
cargo install cargo-rdme;                                                      #
cargo install cargo-release;                                                   #
cargo install cargo-tarpaulin;                                                 #
cargo install cargo-update;                                                    #
cargo install cargo-watch;                                                     #

# cbs

cargo install chess-tui;                                                       #

# colortty

cargo install copo;                                                            #

# coreutils

cargo install ddh --git https://github.com/darakian/ddh;                       # ddh
curl -fsSL https://deno.land/install.sh | sh -s -- -y                          # deno
deno install -A jsr:@deno/deployctl --global                                   # deployctl
cargo install diease_cli;                                                      # diesel
cargo install du-dust;                                                         # du-dust

# dua-cli

cargo install eva;                                                             # eva
cargo install eza;                                                             # eza
cargo install fd-find;                                                         # fd-find
cargo install flamegraph;                                                      # flamegraph
cargo install gfold;                                                           # gfold
cargo install gifski;                                                          # gifski
cargo install git-delta;                                                       # git-delta
cargo install git-journal;                                                     # git-journal
cargo install gitoxide;                                                        # gitoxide
cargo install gitui;                                                           # gitui
cargo install halp;                                                            # halp
cargo install hck;                                                             # hck
cargo install hexyl;                                                           # hexyl
cargo install hgrep;                                                           # hgrep
cargo install htmlq;                                                           # htmlq
cargo install hyperfine;                                                       # hyperfine
cargo install jless;                                                           # jless
cargo install just;                                                            # just
cargo install kondo;                                                           # kondo
cargo install lazycli --locked;                                                # lazycli
cargo install lsd;                                                             # lsd
cargo install mdcat;                                                           # mdcat
cargo install melody_cli;                                                      # melody_cli
cargo install mgit;                                                            # mgit
cargo install monolith;                                                        # monolith
cargo install navi;                                                            # navi
cargo install nomino;                                                          # nomino
# nu
cargo install onefetch;                                                        # onefetch
cargo install onehistory;                                                      # onehistory
cargo install pastel;                                                          # pastel
cargo install print_key;                                                       # print_key
cargo install procs;                                                           # procs
cargo install pueue --locked;                                                  # pueue
cargo install ripgrep;                                                         # ripgrep
cargo install ripgrep_all --locked;                                            # ripgrep_all
cargo install samesame;                                                        # samesame
cargo install sccache --locked;                                                # sccache
cargo install sd;                                                              # sd
cargo install sheldon --locked;                                                # sheldon
cargo install spotify-tui;                                                     # spotify-tui
# starship
cargo install tauri-cli;                                                       # tauri
cargo install tealdeer;                                                        # tealdeer
cargo install tock;                                                            # tock
cargo install tokei --git https://github.com/XAMPPRocky/tokei.git;             # tokei
cargo install viu;                                                             # viu
cargo install watchexec-cli --locked;                                          # watchexec-cli
cargo install wordcrab;                                                        # wordcrab
cargo install xcp;                                                             # xcp
cargo install xsv;                                                             # xsv
cargo install yazi-cli --locked yazi-fm;                                       # yazi
cargo install zellij --locked;                                                 # zellij
cargo install zoxide --locked;                                                 # zoxide

####################################################################################################
