#!/bin/sh

cheat -l | \
awk '
BEGIN{

  # colors
  red = "\033[1;31m"
  gray = "\033[1;30m"
  blue = "\033[1;34m"
  yellow = "\033[1;33m"
  cyan = "\033[0;36m"
  green = "\033[0;32m"
}

{
  if ( NR == 1 )
  {

    # decompose printf
    printf "%s ", gray "|";
    printf "%-40s", blue $1;
    printf "%s", gray "|";
    printf "%49s ", blue $3;
    printf "%s\n", gray "|";

    for ( m = 1; m <= 80; m++ )
    {
      printf "%s", gray "‡";
    }
    print ""
  }
else
  {

    # replicate as header
    printf "%s ", gray "|";
    printf "%-40s", yellow $1;
    printf "%s", gray "|";
    printf "%49s ", cyan $3;
    printf "%s\n", gray "|";
  }
}
'
