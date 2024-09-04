####################################################################################################

# TODO: annotate just groups

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
@In-situ:
  source .just/in-situ.sh

####################################################################################################

# link ex-situ archive
@Ex-situ:
  source .just/ex-situ.sh

####################################################################################################

# deliver archives to Pawsey
@Deliver-pawsey:
  source .just/deliver-pawsey.sh

####################################################################################################

# link archives Pawsey
@Link-pawsey:
  source .just/link-pawsey.sh

####################################################################################################

# download cluster executables
@Prebuild:
  source .just/prebuild.sh

####################################################################################################

# record software
@Memory:
  source .just/memory.sh

####################################################################################################
# helix
####################################################################################################

# open frag karabiner
@Karabiner-frag:
  hx in-situ/karabiner/frag/{espanso/esc.edn,espanso/function.edn,simple/tab.edn,joker/joker-fn.edn,simple/lshift.edn,simple/lctl.edn,simple/lopt.edn,cmd/lcmd-fn.edn,simple/rctl.edn,simple/space.edn,simple/rcmd.edn,simple/ropt.edn,shift/rshift-ctlABC.edn,bspace/bs-ctlABC.edn,ctlcmd/cc-fn.edn,simple/q-layer.edn,simple/patch.edn,arrow/arrow-fn.edn}

# open editors karabiner
@Karabiner-editors:
  hx in-situ/karabiner/frag/apps/{editor.edn,lapce.edn,zed.edn}

@Karabiner-zellij:
  hx in-situ/karabiner/frag/zellij/{ABC-fn.edn,mod-ABC.edn}

####################################################################################################
# compose protocols
####################################################################################################

# deliver & link configuration Pawsey
Deploy-pawsey: Deliver-pawsey && Link-pawsey

####################################################################################################
