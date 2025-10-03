####################################################################################################
# Install Rust
####################################################################################################

# TODO: segment install packages individually to manage dependencies & operating systems
# TODO: for ubuntu, install gcc prior
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Make the newly-installed Cargo/tools available in this session
if [[ -f "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
else
  export PATH="$HOME/.cargo/bin:$PATH"
fi

####################################################################################################
# Cargo Setup
####################################################################################################

# Add dependency via cargo-edit
cargo add ratatui

# Install Atuin shell history replacement
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh -s -- -y

####################################################################################################
# Install Rust Binaries
####################################################################################################

install_crates=(
  asciinema --locked --git https://github.com/asciinema/asciinema    # terminal recorder
  bacon --locked                                                     # watch Rust builds
  bartib                                                             # simple time tracker
  bat --locked                                                       # syntax-highlighted cat
  bottom --locked                                                    # system monitor
  broot --locked --features clipboard                                # fuzzy file manager
  cargo-benchcmp                                                     # compare benchmarks
  cargo-binstall                                                     # install Cargo binaries
  cargo-cache                                                        # inspect Cargo cache
  cargo-check                                                        # fast compilation check
  cargo-do                                                           # Cargo task runner
  cargo-edit                                                         # manage dependencies
  cargo-expand                                                       # view macro expansions
  cargo-geiger                                                       # detect unsafe code
  cargo-license                                                      # check licenses
  cargo-make                                                         # task automation
  cargo-modules                                                      # analyze module graph
  cargo-nextest                                                      # faster test runner
  cargo-outdated                                                     # outdated dependency checker
  cargo-rdme                                                         # generate README from docs
  cargo-release                                                      # release automation
  cargo-tarpaulin                                                    # code coverage
  cargo-update                                                       # update installed crates
  cargo-watch                                                        # rerun on source changes
  copo                                                               # terminal color manager
  ddh --git https://github.com/darakian/ddh                          # dedup disk usage
  diease_cli                                                         # Diesel ORM CLI
  du-dust                                                            # disk usage analyzer
  eza                                                                # modern ls replacement
  eva                                                                # REPL calculator
  fd-find                                                            # fast file finder
  flamegraph                                                         # profiling visualizer
  gfold                                                              # list Git repos
  gifski                                                             # GIF encoder
  git-delta                                                          # improved diff viewer
  halp                                                               # interactive help
  hck                                                                # fast CSV processor
  hexyl                                                              # hex viewer
  hgrep                                                              # syntax-aware grep
  htmlq                                                              # HTML query tool
  hyperfine                                                          # command benchmarker
  jnv                                                                # JSON converter
  jiggy                                                              # interactive CLI helper
  just                                                               # task runner
  kalker                                                             # terminal calculator
  lazycli --locked                                                   # lazy command UI
  mdcat                                                              # Markdown viewer
  monolith                                                           # save full webpages
  navi                                                               # cheatsheet navigator
  nomino                                                             # batch file renamer
  onefetch                                                           # repo summary tool
  pastel                                                             # terminal colorizer
  print_key                                                          # show key codes
  procs                                                              # process viewer
  ripgrep                                                            # fast grep alternative
  ripgrep_all --locked                                               # search archives & PDFs
  scls --git https://github.com/estin/simple-completion-language-server.git    # completion LSP
  samesame                                                           # fuzzy string matcher
  serpl                                                              # interactive replace
  sd                                                                 # find & replace
  sheldon --locked                                                   # Zsh plugin manager
  spotify-tui                                                        # Spotify TUI client
  taplo-cli --locked                                                 # TOML linter
  tauri-cli                                                          # Tauri CLI
  tealdeer                                                           # tldr client
  tock                                                               # timer utility
  tokei --git https://github.com/XAMPPRocky/tokei.git                # code statistics
  trippy --locked                                                    # interactive demos
  viu                                                                # terminal image viewer
  watchexec-cli --locked                                             # watch & run commands
  wordcrab                                                           # dictionary CLI
  xan --locked                                                       # csv parser magician
  xcp                                                                # parallel copy
  zellij --locked                                                    # terminal workspace manager
  zoxide --locked                                                    # frecency-based cd
)

for ((i = 0; i < ${#install_crates[@]}; i++)); do
  crate="${install_crates[i]}"
  next="${install_crates[i + 1]:-}"
  
  if [[ "$crate" == "--git" ]]; then
    continue
  elif [[ "$next" == "--git" ]]; then
    url="${install_crates[i + 2]}"
    echo "Installing ${crate} from ${url}..."
    cargo install "${crate}" --git "${url}"
    i=$((i + 2))
  else
    echo "Installing ${crate}..."
    cargo install ${crate}
  fi
done

cargo install dprint
dprint install-plugin html


####################################################################################################
# Install Deno and Deployctl
####################################################################################################

curl -fsSL https://deno.land/install.sh | sh -s -- -y
deno install -A jsr:@deno/deployctl --global

####################################################################################################
