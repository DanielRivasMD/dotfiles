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

####################################################################################################

# format & watch goku
Goku:

####################################################################################################

# record software
Mnemosyne:

####################################################################################################

# set up
setup:
  source setup/setup.sh

####################################################################################################
