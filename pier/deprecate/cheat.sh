#!/bin/sh

clear
source ${PIER}break_cross.sh 80

if [[ "$1" == "list" ]]
then
  sh ${PIER}cheat_list.sh

elif [[ "$1" == "alfred" ]]
then
  sh ${PIER}cheat_list.sh "-t alfred"

elif [[ "$1" == "bash" ]]
then
  sh ${PIER}cheat_list.sh "-t bash"

elif [[ "$1" == "cli" ]]
then
  sh ${PIER}cheat_list.sh "-t cli"

elif [[ "$1" == "go" ]]
then
  sh ${PIER}cheat_list.sh "-t go"

elif [[ "$1" == "julia" ]]
then
  sh ${PIER}cheat_list.sh "-t julia"

elif [[ "$1" == "python" ]]
then
  sh ${PIER}cheat_list.sh "-t python"

elif [[ "$1" == "R" ]]
then
  sh ${PIER}cheat_list.sh "-t R"

elif [[ "$1" == "rust" ]]
then
  sh ${PIER}cheat_list.sh "-t rust"

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
