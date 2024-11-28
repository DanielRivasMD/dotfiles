#!/bin/bash
####################################################################################################

# install julia package manager
brew install juliaup

####################################################################################################

# install packages
julia -e << TESTA
packages = [
  "OhMyREPL",
  "Chain",
  "Pipe",
  "Revise",
  "Debugger",
  "UnicodePlots",
  "DelimitedFiles",
]

using Pkg
for pk in packages
  @info pk
  Pkg.add(pk)
end
TESTA

####################################################################################################
