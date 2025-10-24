####################################################################################################
# Cargo Setup
####################################################################################################

# Add dependency via cargo-edit (run `cargo add <crate>` in projects)
cargo add ratatui

# Install Atuin (shell history replacement with sync & search)
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh -s -- -y

# Install Deno & Deployctl
curl -fsSL https://deno.land/install.sh | sh -s -- -y
deno install -A jsr:@deno/deployctl --global               # Deno Deploy CLI

# Extra tools
cargo install dprint                                       # code formatter
# BUG: unrecognized subcommand
# dprint install-plugin html                                 # HTML plugin for dprint

####################################################################################################
# Install Rust Binaries
####################################################################################################

CRATES=(
  "asciinema --locked --git https://github.com/asciinema/asciinema"                                # terminal session recorder
  "bacon --locked"                                                                                 # watch Rust builds & rerun
  "bartib"                                                                                         # simple time tracker
  "bat --locked"                                                                                   # syntax-highlighted `cat`
  "bottom --locked"                                                                                # system monitor (like htop)
  "cargo-benchcmp"                                                                                 # compare benchmark results
  "cargo-binstall"                                                                                 # fast binary installer for crates
  "cargo-cache"                                                                                    # inspect/manage cargo cache
  "cargo-check"                                                                                    # fast compilation check
  "cargo-do"                                                                                       # cargo task runner
  "cargo-edit"                                                                                     # manage dependencies (add/rm)
  "cargo-expand"                                                                                   # view macro expansions
  "cargo-geiger"                                                                                   # detect unsafe code
  "cargo-license"                                                                                  # check licenses of dependencies
  "cargo-make"                                                                                     # task automation
  "cargo-modules"                                                                                  # analyze module graph
  "cargo-nextest"                                                                                  # faster test runner
  "cargo-outdated"                                                                                 # check outdated dependencies
  "cargo-rdme"                                                                                     # generate README from docs
  "cargo-release"                                                                                  # release automation
  "cargo-tarpaulin"                                                                                # code coverage
  "cargo-update"                                                                                   # update installed crates
  "cargo-watch"                                                                                    # rerun on source changes
  "copo"                                                                                           # terminal color manager
  "ddh --git https://github.com/darakian/ddh"                                                      # dedup disk usage analyzer
  "diease_cli"                                                                                     # Diesel ORM CLI
  "du-dust"                                                                                        # disk usage analyzer
  "eza"                                                                                            # modern `ls` replacement
  "eva"                                                                                            # REPL calculator
  "fd-find"                                                                                        # fast file finder
  "flamegraph"                                                                                     # profiling visualizer
  "gfold"                                                                                          # list Git repos
  "gifski"                                                                                         # GIF encoder
  "git-delta"                                                                                      # improved diff viewer
  "halp"                                                                                           # interactive help
  "hck"                                                                                            # fast CSV processor
  "hexyl"                                                                                          # hex viewer
  "hgrep"                                                                                          # syntax-aware grep
  "htmlq"                                                                                          # HTML query tool
  "hyperfine"                                                                                      # command benchmarker
  "jnv"                                                                                            # JSON converter
  "jiggy"                                                                                          # interactive CLI helper
  "just"                                                                                           # task runner
  "kalker"                                                                                         # terminal calculator
  "lazycli --locked"                                                                               # lazy command UI
  "mdcat"                                                                                          # Markdown viewer
  "monolith"                                                                                       # save full webpages
  "navi"                                                                                           # cheatsheet navigator
  "nomino"                                                                                         # batch file renamer
  "onefetch"                                                                                       # repo summary tool
  "pastel"                                                                                         # terminal colorizer
  "print_key"                                                                                      # show key codes
  "procs"                                                                                          # process viewer
  "ripgrep"                                                                                        # fast grep alternative
  "ripgrep_all --locked"                                                                           # search archives & PDFs
  "scls --git https://github.com/estin/simple-completion-language-server.git"                      # completion LSP
  "samesame"                                                                                       # fuzzy string matcher
  "serpl"                                                                                          # interactive replace
  "sd"                                                                                             # find & replace
  "sheldon --locked"                                                                               # Zsh plugin manager
  "spotify-tui"                                                                                    # Spotify TUI client
  "taplo-cli --locked"                                                                             # TOML linter
  "tauri-cli"                                                                                      # Tauri CLI
  "tealdeer"                                                                                       # tldr client
  "tock"                                                                                           # timer utility
  "tokei --git https://github.com/XAMPPRocky/tokei.git"                                            # code statistics
  "trippy --locked"                                                                                # interactive demos
  "viu"                                                                                            # terminal image viewer
  "watchexec-cli --locked"                                                                         # watch & run commands
  "wordcrab"                                                                                       # dictionary CLI
  "xan --locked"                                                                                   # CSV parser magician
  "xcp"                                                                                            # parallel copy
  "yazi-build --force"
  "zoxide --locked"                                                                                # smarter `cd` with frequency
)

for crate in "${CRATES[@]}"; do
  echo "Installing: cargo install ${crate}"
  eval cargo install "${crate}"
done

####################################################################################################
