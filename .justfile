####################################################################################################

_default:
  @just --list

####################################################################################################

# print justfile
[group('just')]
@show:
  bat .justfile --language make

####################################################################################################

# edit justfile
[group('just')]
@edit:
  micro .justfile

####################################################################################################

# set up
[group('setup')]
@setup:
  source .just/setup.sh

####################################################################################################

# link in-situ archive
[group('link')]
@In-situ:
  source .just/in-situ.sh

####################################################################################################

# link ex-situ archive
[group('link')]
@Ex-situ:
  source .just/ex-situ.sh

####################################################################################################

# deliver archives to Pawsey
[group('remote')]
@Deliver-pawsey:
  source .just/deliver-pawsey.sh

####################################################################################################

# link archives Pawsey
[group('remote')]
@Link-pawsey:
  source .just/link-pawsey.sh

####################################################################################################

# download cluster executables
[group('remote')]
@Prebuild:
  source .just/prebuild.sh

####################################################################################################

# record software
[group('setup')]
@Memory:
  source .just/memory.sh

####################################################################################################
# helix
####################################################################################################

# open frag karabiner
[group('editor')]
@Karabiner-frag:
  hx in-situ/karabiner/frag/{espanso/esc.edn,espanso/function.edn,simple/tab.edn,joker/joker-fn.edn,simple/lshift.edn,simple/lctl.edn,simple/lopt.edn,cmd/lcmd-fn.edn,simple/rctl.edn,simple/space.edn,simple/rcmd.edn,simple/ropt.edn,shift/rshift-ctlABC.edn,bspace/bs-ctlABC.edn,ctlcmd/cc-fn.edn,simple/q-layer.edn,simple/patch.edn,arrow/arrow-fn.edn}

# open editors karabiner
[group('editor')]
@Karabiner-editors:
  hx in-situ/karabiner/frag/apps/{editor.edn,lapce.edn,zed.edn}

# open zellij karabiner
[group('editor')]
@Karabiner-zellij:
  hx in-situ/karabiner/frag/zellij/{ABC-fn.edn,mod-ABC.edn}

####################################################################################################
# compose protocols
####################################################################################################

# deliver & link configuration Pawsey
[group('remote')]
Deploy-pawsey: Deliver-pawsey && Link-pawsey

####################################################################################################
