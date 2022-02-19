################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

################################################################################

# install formualae
brew install --formualae $(cat setup/brew_formulae.txt)

# install casks
brew install --casks $(cat setup/brew_casks.txt)

################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

################################################################################

# install rust binaries
while read item
do
  cargo install ${item}
done < setup/cargo.txt

################################################################################
