#!/bin/bash
####################################################################################################
# go
####################################################################################################

_update() {

  # check updates
  go-global-update --dry-run

  # upgrade binaries
  go-global-update
}

####################################################################################################

# execute
_update

####################################################################################################
