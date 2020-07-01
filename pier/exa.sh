#!/bin/sh

clear

if [[ "$1" == "accessed" ]]
then
  $(which exa) \
    --long \
    --group-directories-first \
    --classify \
    --links \
    --git \
    --header \
    --sort=accessed \
    --group \
    --all \
    --time accessed

elif [[ "$1" == "created" ]]
then
  $(which exa) \
    --long \
    --group-directories-first \
    --classify \
    --links \
    --git \
    --header \
    --sort=created \
    --group \
    --all \
    --time created

elif [[ "$1" == "absolute" ]]
then
  $(which exa) \
    --long  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --sort=newest  \
    --group \
    --all

elif [[ "$1" == "tree" ]]
then
  $(which exa) \
    --long  \
    --group-directories-first  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --group  \
    --all \
    --tree  \
    --level 3  \
    --ignore-glob ".git|.idea"

elif [[ "$1" == "dir" ]]
then
  $(which exa) \
    --long  \
    --only-dirs  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --group  \
    --all \
    --tree  \
    --level 3  \
    --ignore-glob ".git|.idea"

fi
