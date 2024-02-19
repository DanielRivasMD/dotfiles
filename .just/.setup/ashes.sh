#!/bin/bash
####################################################################################################

# setup
setupDir="$HOME/.archive/.just/.setup"

####################################################################################################

# install curl
sudo apt install curl

####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

####################################################################################################

# install rust binaries
while read item
do
  cargo install ${item}
done < "${setupDir}/cargo.txt"

####################################################################################################

# install go
curl -OL https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.22.0.linux-amd64.tar.gz

####################################################################################################
