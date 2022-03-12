################################################################################

# brew binaries
brew list --formulae | \
  awk '{ formula[$0] = ! formula[$0] } END { for (f in formula) if (formula[f]) print f }' - ${HOME}/.archive/setup/brew_formulae_patch.txt | \
  sort > ${HOME}/.archive/setup/brew_formulae.txt

################################################################################

# brew casks
brew list --casks | \
  awk '{ cask[$0] = ! cask[$0] } END { for (c in cask) if (cask[c]) print c }' - ${HOME}/.archive/setup/brew_casks_patch.txt | \
  sort > ${HOME}/.archive/setup/brew_casks.txt

################################################################################

# cargo binaries
cargo-install-update install-update --list | \
  awk '{ if ( NR > 3 ) {print $1}}' | \
  sort > ${HOME}/.archive/setup/cargo.txt

################################################################################

# golang binaries
gup export

# relocate & link
mv ${HOME}/.config/gup/gup.conf ${HOME}/.archive/setup/golang_binaries.txt
ln -svf ${HOME}/.archive/setup/golang_binaries.txt ${HOME}/.config/gup/gup.conf

################################################################################

# atom packages
apm list --json > ${HOME}/.archive/setup/atom.json

################################################################################
