#!/bin/sh

aliases list | \
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

  # begin table
  if ( NR == 1 )
  {
    for ( m = 1; m <= 151; m++ )
    {
      printf "%s", gray "‡";
    }
    print ""
  }

  # table header
  else if ( NR == 2 )
  {
    # decompose printf
    printf "%s ", gray "|";
    printf "%-20s", yellow $1;
    printf "%s ", gray "|";
    printf "%-120s", cyan $2;
    printf "%s ", gray "|";
    printf "%-25s", green $3;
    printf "%s\n", gray "|";
    for ( m = 1; m <= 151; m++ )
    {
      printf "%s", gray "‡";
    }
    print ""
  }
  else
  {

    # replicate as header
    printf "%s ", gray "|";
    printf "%-20s", yellow $1;
    printf "%s", gray "|";
    # collect commands
    {
      j = ""
      for ( i = 2; i < NF; i++ )
      {
        j = j " " $i
      }
      printf "%-121s", cyan j;
    }
    printf "%s ", gray "|";
    printf "%-25s", green $NF;
    printf "%s\n", gray "|";
  }
}

# close table
END{
  for ( m = 1; m <= 151; m++ )
  {
    printf "%s", gray "‡";
  }
  print ""
}
'
