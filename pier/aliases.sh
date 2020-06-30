#!/bin/sh

clear

if [[ "$1" == "list" ]]
then
  sh ${PIER}aliases_list.sh

elif [[ "$1" == "dirs" ]]
then
  aliases directories | \
  awk '
  BEGIN{
    FS=", ";
    print "initialized alias directories";
  }
  {
    for ( i = 1; i <= NF; i++ )
    print $i
  }
  ' | \
  /usr/local/bin/runiq -

elif [[ "$1" == "reload" ]]
then
  aliases rehash && echo 'aliases reloaded'

fi
