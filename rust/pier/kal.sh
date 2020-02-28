#!/bin/sh

clear
source ${PIER}break_single_line.sh ${MANWIDTH}

if [[ "$1" == "all" ]]
then
  khal calendar

elif [[ "$1" == "work" ]]
then
  khal calendar \
  -f "{calendar-color}[{start-time}-{end-time}]  {title}{description-separator}{description}  ‹{location}›  «{categories}»" \
  -d SuperRugby \
  -d Astronomy

elif [[ "$1" == "list" ]]
then
  khal list \
  -f "{calendar-color}[{start-time}-{end-time}]  {title}{description-separator}{description}  ‹{location}›  «{categories}»" \
  -d SuperRugby \
  -d Astronomy

elif [[ "$1" == "astro" ]]
then
  khal calendar \
  --include-calendar Astronomy

elif [[ "$1" == "SuperRugby" ]]
then
  khal calendar \
  --include-calendar SuperRugby

fi

source ${PIER}break_single_line.sh ${MANWIDTH}
