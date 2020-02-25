#!/bin/sh

clear
source ${PIER}break_cross.sh 80

if [[ "$1" == "list" ]]
then
  sh ${PIER}cheat_list.sh

elif [[ "$1" == "dirs" ]]
then
  cheat -d | \
  awk '
  BEGIN{
    gray = "\033[1;30m"
    cyan = "\033[0;36m"
  }
  {
    printf "%s ", gray "|";
    printf "%-30s", cyan $1;
    printf "%s ", gray "|";
    printf "%-51s ", $2;
    printf "%1s\n", "|";
  }
  '
fi

source ${PIER}break_cross.sh 80
