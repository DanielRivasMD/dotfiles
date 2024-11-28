#!/bin/bash
####################################################################################################

# archive
archDir="$HOME/.archive"

####################################################################################################

# install goku karabiner
brew install yqrashawn/goku/goku 1>> "${archDir}/log/clojure.out" 2>> "${archDir}/log/clojure.err"

####################################################################################################

# clojure format
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/weavejester/cljfmt/HEAD/install.sh)" 1>> "${archDir}/log/clojure.out" 2>> "${archDir}/log/clojure.err"

####################################################################################################
