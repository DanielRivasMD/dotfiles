####################################################################################################

_default:
  @just --list

####################################################################################################

# print justfile
@show:
  bat .justfile --language make

####################################################################################################

# edit justfile
@edit:
  micro .justfile

####################################################################################################


####################################################################################################

# link Cerberus archive
Cerberus:

####################################################################################################

# link Ianus archive
Ianus:

####################################################################################################

# deliver archives to Pawsey
Mercury-pawsey:

####################################################################################################

# link archives Pawsey
Vulcano-pawsey:

####################################################################################################

# download cluster executables
Hadur:
####################################################################################################
# compose protocols
####################################################################################################

# deliver & link configuration Pawsey
Deploy-Pawsey: Mercury-pawsey && Vulcano-pawsey

####################################################################################################

# watch changes goku karabiner
goku-watch:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # watch source changes
  watchexec --watch "${karabiner}/karabiner.edn" -- 'goku' &

####################################################################################################

# format goku karabiner
goku-format:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # format with clojure format
  cljfmt fix "${karabiner}/karabiner.edn"

####################################################################################################

# format & watch goku
Goku:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # format & watch
  watchexec --watch "${karabiner}/karabiner.edn" -- 'cljfmt fix cerberus/karabiner/karabiner.edn && goku'

####################################################################################################

# record software
Mnemosyne:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # collect brew
  brew list --formula > "${setupDir}/brew_formulae.txt"
  brew list --cask > "${setupDir}/brew_casks.txt"

  # collect cargo
  cargo-install-update install-update --list | awk '{if (NR > 3) print $1}' > "${setupDir}/cargo.txt"


####################################################################################################

# set up
setup:
  source setup/setup.sh

####################################################################################################
