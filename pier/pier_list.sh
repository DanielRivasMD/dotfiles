#!/bin/sh

$(which pier) list | \
awk '
BEGIN{
  FS = "[|]"

  # colors
  red = "\033[1;31m"
  gray = "\033[1;30m"
  blue = "\033[1;34m"
  yellow = "\033[1;33m"
  cyan = "\033[0;36m"
  green = "\033[0;32m"
}

{
  # print table edges
  if ( /^\+/ )
  {
    printf gray $0 "\n";
  }
  else
  {

    # hard-coded spacing
    if ( NR == 2 )
    {
      $4 = " Command                                                            # Description                     ";
    }

    # keep same spacing
    split($4, desp, "#")
    printf gray "|";
    printf yellow $2;
    printf gray "|";
    printf cyan $3;
    printf gray "|";
    printf gray desp[1];

    # print description
    if ( length(desp) == 2 )
    {
      printf " " green desp[2];
    }

    # close table & print newline
    printf gray "|\n";
  }
}
'
