################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

################################################################################

# patch formulae
brew install itchyny/tap/fillin

brew install kdabir/tap/has

brew tap brianp/homebrew-muxed
brew install muxed_bin

brew tap pokanop/pokanop
brew install nostromo

brew tap lavifb/todo_r https://github.com/lavifb/todo_r.git
brew install todor

brew tap watermint/toolbox
brew install toolbox

brew tap liujianping/tap/ts
brew install ts

# patch casks
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

brew install --cask julia
brew install --cask docker

################################################################################

# install formulae
brew install --formulae $(cat setup/brew_formulae.txt)

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

# install golang update
go install github.com/nao1215/gup@latest

################################################################################

# link
mkdir -p ${HOME}/.config/gup
ln -svf ${HOME}/.archive/setup/golang_binaries.txt ${HOME}/.config/gup/gup.conf

# install golang binaries
gup import

################################################################################
