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
  bacon --locked
  bartib
  bat --locked
  bottom --locked
  broot --locked --features clipboard
  cargo-benchcmp
  cargo-binstall
  cargo-cache
  cargo-check
  cargo-do
  cargo-edit
  cargo-expand
  cargo-geiger
  cargo-license
  cargo-make
  cargo-modules
  cargo-nextest
  cargo-outdated
  cargo-rdme
  cargo-release
  cargo-tarpaulin
  cargo-update
  cargo-watch
  chess-tui
  copo
  ddh --git https://github.com/darakian/ddh
  diease_cli
  du-dust
  eva
  eza
  fd-find
  flamegraph
  gfold
  gifski
  git-delta
  git-journal
  gitoxide
  gitui
  halp
  hck
  hexyl
  hgrep
  htmlq
  hyperfine
  jless
  just
  kondo
  lazycli --locked
  lsd
  mdcat
  melody_cli
  mgit
  monolith
  navi
  nomino
  onefetch
  onehistory
  pastel
  print_key
  procs
  pueue --locked
  ripgrep
  ripgrep_all --locked
  samesame
  sccache --locked
  sd
  sheldon --locked
  spotify-tui
  taplo-cli --locked
  tauri-cli
  tealdeer
  tock
  tokei --git https://github.com/XAMPPRocky/tokei.git
  viu
  watchexec-cli --locked
  wordcrab
  xcp
  xsv
  yazi-cli --locked yazi-fm
  zellij --locked
  zoxide --locked
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
