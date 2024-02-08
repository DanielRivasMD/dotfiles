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

# set up
@setup:
  source .just/setup.sh

####################################################################################################

# link Cerberus archive
Cerberus:
  source .just/cerberus.sh

####################################################################################################

# link Ianus archive
Ianus:
  source .just/iauns.sh

####################################################################################################

# deliver archives to Pawsey
Mercury-pawsey:
  source .just/mercury_pawsey.sh

####################################################################################################

# link archives Pawsey
Vulcano-pawsey:
  source .just/vulcano.sh

####################################################################################################

# download cluster executables
Hadur:
  source .just/hadur.sh

####################################################################################################

# format & watch goku
Goku:
  source .just/goku.sh

####################################################################################################

# record software
Mnemosyne:
  source .just/mnemosyne.sh

####################################################################################################
# compose protocols
####################################################################################################

# deliver & link configuration Pawsey
Deploy-Pawsey: Mercury-pawsey && Vulcano-pawsey

####################################################################################################
