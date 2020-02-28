#!/bin/sh

clear
source ${PIER}break_single_line.sh ${MANWIDTH}

tree \
  -h \
  -C \
  -a \
  -L 3 \
  -l \
  -D \
  --dirsfirst \
  --filelimit=12 \
  -I '.git|.idea'

source ${PIER}break_single_line.sh ${MANWIDTH}
