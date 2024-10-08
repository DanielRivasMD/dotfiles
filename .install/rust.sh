#!/bin/bash
####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# reload shell
source $HOME/.zshrc

####################################################################################################

# install rust binaries
while read item
do
  cargo install ${item} 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"
done < "${setupDir}/cargo.txt"

####################################################################################################

curl -fsSL https://deno.land/install.sh | sh

####################################################################################################

cargo install tauri-cli
cargo add ratatui

# cargo install --locked lazycli

####################################################################################################
