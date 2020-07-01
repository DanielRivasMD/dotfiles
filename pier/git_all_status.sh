#!/bin/sh

clear
old_dir=$(pwd)
for i in $( fd --type d --hidden --fixed-strings --ignore-file ${PIER}.git_all_ignore .git /Users/drivas/{.dotfiles,bin/Software/FactorDR,Factorem} )
do
  j=${i/.git/}

  # get status
  cd ${j}
  tmp_git_status=$( git status --short )
  tmp_git_stash=$( git stash list )
  if [[ -z "${tmp_git_status}" && -z "${tmp_git_stash}" ]]
  then
    echo ${j} >> /Users/drivas/.tmp_git_all_status_out_clean
  else
    echo ${j} >> /Users/drivas/.tmp_git_all_status_out_dirty
    echo -e ${tmp_git_status} >> /Users/drivas/.tmp_git_all_status_out_dirty
    source ${PIER}break_single_line.sh >> /Users/drivas/.tmp_git_all_status_out_dirty ${MANWIDTH}
    echo ${tmp_git_stash} >> /Users/drivas/.tmp_git_all_status_out_dirty
    source ${PIER}break_single_line.sh >> /Users/drivas/.tmp_git_all_status_out_dirty ${MANWIDTH}
  fi

done
cd $old_dir

# print clean
if [[ -e "/Users/drivas/.tmp_git_all_status_out_clean" ]]
then
  source ${PIER}break_single_line.sh ${MANWIDTH}
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
      printf cyan "Updated Repositories\n";
      for ( m = 1; m <= 175; m++ )
      {
        printf "%s", gray "=";
      }
      print ""
    }
  }
  {
    printf green $0 "\n";
  }
  END{
    for ( m = 1; m <= 175; m++ )
    {
      printf "%s", gray "=";
    }
    print ""

    for ( m = 1; m <= 175; m++ )
    {
      printf "%s", gray "=";
    }
    print ""

  }' /Users/drivas/.tmp_git_all_status_out_clean
fi
rm /Users/drivas/.tmp_git_all_status_out_clean

# print dirty
if [[ -e "/Users/drivas/.tmp_git_all_status_out_dirty" ]]
then
  source ${PIER}break_single_line.sh ${MANWIDTH}
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
      printf cyan "Non-updated Repositories\n";
      for ( m = 1; m <= 175; m++ )
      {
        printf "%s", gray "=";
      }
      print ""

    }
  }
  {
    if ( $1 ~/^\// )
    {
      printf green $0 "\n";
    }
    else if ( $1 ~/^stash/ )
    {
      printf yellow $0 "\n";
    }
    else if ( $1 ~/[[:alpha:]]/ )
    {
      printf blue $0 "\n";
    }
    else if ( $1 ~/\?/ )
    {
      printf red $0 "\n";
    }
    else
    {
      printf gray $0 "\n";
    }

  }
  END{
    for ( m = 1; m <= 175; m++ )
    {
      printf "%s", gray "=";
    }
    print ""

    for ( m = 1; m <= 175; m++ )
    {
      printf "%s", gray "=";
    }
    print ""

  }' /Users/drivas/.tmp_git_all_status_out_dirty
fi
rm /Users/drivas/.tmp_git_all_status_out_dirty
