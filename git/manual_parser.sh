#!/bin/bash

directory="/Users/Daniel/.dotfiles/git/"

if [[ "$1" == "one-letter" ]]
then
  awk -f ${directory}manual_parser.awk ${directory}gitconfig.d/alias_one_letter
elif [[ "$1" == "two-letter" ]]
then
  awk -f ${directory}manual_parser.awk ${directory}gitconfig.d/alias_two_letter
elif [[ "$1" == "functions" ]]
then
  # TODO: work on funtions
  awk -f ${directory}manual_parser.awk ${directory}gitconfig.d/functions
fi
