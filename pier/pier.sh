#!/bin/sh

clear

if [[ "$1" == "all" ]]
then
  source ${PIER}aliases_list.sh
  source ${PIER}break_double_line.sh 140

  source ${PIER}pier_list.sh

elif [[ "$1" == "list" ]]
then
  source ${PIER}pier_list.sh

fi
