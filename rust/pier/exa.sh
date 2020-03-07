#!/bin/sh

clear

if [[ "$1" == "accessed" ]]
then
  /usr/local/bin/exa \
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
  /usr/local/bin/exa \
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
  /usr/local/bin/exa \
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
  /usr/local/bin/exa \
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
  /usr/local/bin/exa \
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
