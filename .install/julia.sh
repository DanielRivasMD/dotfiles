#!/bin/bash
####################################################################################################

# install julia package manager
brew install juliaup

####################################################################################################

# install packages
julia --eval 'using Pkg; for pk in ["OhMyREPL", "Chain", "Pipe", "Revise", "Debugger", "UnicodePlots", "DelimitedFiles"] Pkg.add(pk) end'

####################################################################################################
