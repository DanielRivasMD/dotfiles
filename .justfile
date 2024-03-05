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

# link in-situ archive
In-situ:
  source .just/in-situ.sh

####################################################################################################

# link ex-situ archive
Ex-situ:
  source .just/ex-situ.sh

####################################################################################################

# deliver archives to Pawsey
Deliver-pawsey:
  source .just/deliver-pawsey.sh

####################################################################################################

# link archives Pawsey
Link-pawsey:
  source .just/link-pawsey.sh

####################################################################################################

# download cluster executables
Prebuild:
  source .just/prebuild.sh

####################################################################################################

# record software
Memory:
  source .just/memory.sh

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
Deploy-pawsey: Deliver-pawsey && Link-pawsey

####################################################################################################
