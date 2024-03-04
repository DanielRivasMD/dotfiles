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
  source .just/ianus.sh

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

# record software
Mnemosyne:
  source .just/mnemosyne.sh

####################################################################################################
# helix
####################################################################################################

# open fragmented karabiner
@Karabiner-fragmented:
  hx cerberus/karabiner/fragmented/{esc.edn,function.edn,tab.edn,hyper.edn,lctrl.edn,lopt.edn,lcmd.edn,space.edn,ropt.edn,rcmd.edn,rshift.edn,bspace.edn,ctrl_cmd.edn,zero.edn,super.edn}

# open editors karabiner
@Karabiner-editors:
  hx cerberus/karabiner/fragmented/{editor.edn,lapce.edn,zed.edn,terminal.edn}

####################################################################################################
# compose protocols
####################################################################################################

# deliver & link configuration Pawsey
Deploy-Pawsey: Mercury-pawsey && Vulcano-pawsey

####################################################################################################
