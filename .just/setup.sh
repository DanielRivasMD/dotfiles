####################################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

####################################################################################################

# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

####################################################################################################

# patch formulae
brew install itchyny/tap/fillin

brew install kdabir/tap/has

brew tap lavifb/todo_r https://github.com/lavifb/todo_r.git
brew install todor

brew tap watermint/toolbox
brew install toolbox

brew tap liujianping/tap/ts
brew install ts

# patch casks
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

brew tap gaborcsardi/rim
brew install --cask rim

brew install --cask julia
brew install --cask docker

####################################################################################################

# install formulae
brew install --formulae $(cat setup/brew_formulae.txt)

# install casks
brew install --casks $(cat setup/brew_casks.txt)

####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

####################################################################################################

# install rust binaries
while read item
do
  cargo install ${item}
done < setup/cargo.txt

####################################################################################################

# go version manager
curl -sSL https://git.io/g-install | sh -s

# zsh package manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# install golang update
go install github.com/nao1215/gup@latest

####################################################################################################

# link
mkdir -p ${HOME}/.config/gup
ln -svf ${HOME}/.archive/setup/golang_binaries.txt ${HOME}/.config/gup/gup.conf

# install golang binaries
gup import

####################################################################################################

# install R packages
R CMD INSTALL /Users/drivas/bin/Rpack/colorout_1.2-1.tar.gz
R CMD INSTALL /Users/drivas/bin/Rpack/SystWrapper_2.0.tar.gz

####################################################################################################
