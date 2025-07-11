####################################################################################################
# Install Rust
####################################################################################################

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Reload shell config
source "$HOME/.archive/ex-situ/shell/zsh/osx_zshrc.sh"

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
  bacon --locked                                           # File watcher for Rust builds
  bartib                                                   # Simple time tracker
  bat --locked                                             # Cat clone with syntax highlighting
  bottom --locked                                          # Terminal system monitor
  broot --locked --features clipboard                      # File manager with fuzzy navigation
  cargo-benchcmp                                           # Compare benchmark results
  cargo-binstall                                           # Binary installer for crates
  cargo-cache                                              # Manage and inspect cargo cache
  cargo-check                                              # Faster check for compilation errors
  cargo-do                                                 # Task runner using cargo features
  cargo-edit                                               # Add/remove/update dependencies
  cargo-expand                                             # Macro expansion viewer
  cargo-geiger                                             # Detect unsafe code usage
  cargo-license                                            # Inspect crate licenses
  cargo-make                                               # Automation/task runner
  cargo-modules                                            # Analyze Rust module structure
  cargo-nextest                                            # Fast test runner
  cargo-outdated                                           # Check for outdated deps
  cargo-rdme                                               # Generate README from doc comments
  cargo-release                                            # Release automation
  cargo-tarpaulin                                          # Code coverage tool
  cargo-update                                             # Update installed binaries
  cargo-watch                                              # Watch source and run commands
  chess-tui                                                # Chess in terminal
  copo                                                     # TTY color manager
  ddh --git https://github.com/darakian/ddh                # Disk usage with deduplication
  diease_cli                                               # Diesel CLI (ORM tool)
  du-dust                                                  # Disk usage viewer
  eva                                                      # Calculator/repl with syntax
  eza                                                      # Better `ls` replacement
  fd-find                                                  # Simple, fast find utility
  flamegraph                                               # Visualize program profiling
  gfold                                                    # Git repo lister with metadata
  gifski                                                   # High-quality GIF encoder
  git-delta                                                # Colorized diff viewer
  git-journal                                              # Git commit visualizer
  gitoxide                                                 # Pure Rust Git implementation
  gitui                                                    # Git TUI client
  halp                                                     # Help command builder
  hck                                                      # Fast CSV processor
  hexyl                                                    # Hex viewer in terminal
  hgrep                                                    # Grep with syntax
  htmlq                                                    # HTML selector CLI (jq for HTML)
  hyperfine                                                # Benchmark tool
  jless                                                    # JSON viewer
  just                                                     # Command runner like Make
  kondo                                                    # Project junk cleanup
  lazycli --locked                                         # Lazy command UI
  lsd                                                      # Another `ls` with icons
  mdcat                                                    # Markdown viewer in terminal
  melody_cli                                               # TUI sequencer for melodies
  mgit                                                     # Multi-repo git CLI
  monolith                                                 # Save full webpage to single file
  navi                                                     # Shell cheatsheet navigator
  nomino                                                   # Batch file renamer
  onefetch                                                 # Git repo summary
  onehistory                                               # Shell history navigator
  pastel                                                   # Terminal colorizer
  print_key                                                # Display keypress codes
  procs                                                    # Process viewer
  pueue --locked                                           # Task queue manager
  ripgrep                                                  # Fast search (grep alternative)
  ripgrep_all --locked                                     # Search inside PDFs, archives, etc.
  samesame                                                 # Approximate string matcher
  sccache --locked                                         # Compiler cache
  serpl                                                    # Interactive search and replace
  sd                                                       # Find and replace tool
  sheldon --locked                                         # Shell plugin manager
  spotify-tui                                              # Spotify interface in terminal
  taplo-cli --locked                                       # TOML formatter and linter
  tauri-cli                                                # Tauri app CLI tools
  tealdeer                                                 # tldr client
  tock                                                     # Clock-style timer
  tokei --git https://github.com/XAMPPRocky/tokei.git      # Code stats generator
  viu                                                      # Image viewer in terminal
  watchexec-cli --locked                                   # Trigger commands on file changes
  wordcrab                                                 # Terminal dictionary
  xcp                                                      # Parallel copy utility
  xsv                                                      # CSV toolkit
  zellij --locked                                          # Terminal workspace and tiling
  zoxide --locked                                          # Smarter `cd` alternative
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

####################################################################################################
# Install Deno and Deployctl
####################################################################################################

curl -fsSL https://deno.land/install.sh | sh -s -- -y
deno install -A jsr:@deno/deployctl --global

####################################################################################################
