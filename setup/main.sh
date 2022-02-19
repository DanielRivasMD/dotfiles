################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

################################################################################

# install formualae
while read item
do
  brew install ${item}
done < setup/brew_formulae.txt

# install casks
while read item
do
  brew install --cask ${item}
done < setup/brew_casks.txt

################################################################################