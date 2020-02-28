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

elif [[ "$1" == "list" ]]
then
  /usr/local/bin/exa \
    --long  \
    --group-directories-first  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --group

elif [[ "$1" == "all" ]]
then
  /usr/local/bin/exa \
    --long  \
    --group-directories-first  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --group  \
    --all

elif [[ "$1" == "all_reversed" ]]
then
  /usr/local/bin/exa \
    --long  \
    --group-directories-first  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --sort=newest  \
    --group  \
    --all

elif [[ "$1" == "reversed" ]]
then
  /usr/local/bin/exa \
    --long  \
    --group-directories-first  \
    --classify  \
    --links  \
    --git  \
    --header  \
    --sort=newest  \
    --group

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

fi
