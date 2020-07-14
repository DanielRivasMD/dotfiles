#!/bin/sh

clear
source ${PIER}break_single_line.sh ${MANWIDTH}

git status --show-stash
source ${PIER}break_single_line.sh ${MANWIDTH}

git stash list
source ${PIER}break_double_line.sh ${MANWIDTH}

git lk -20
source ${PIER}break_single_line.sh ${MANWIDTH}
