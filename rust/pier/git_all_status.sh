#!/bin/sh

old_dir=$(pwd)
for i in $( fd --type d --hidden --fixed-strings .git /Users/Daniel/{.dotfiles,bin/Software/FactorDR,Factorem} )
do
	j=${i/.git/}

	# get status
	cd ${j}
	tmp_git_status=$( git status --short )
	tmp_git_stash=$( git stash list )
	if [[ -z "${tmp_git_status}" && -z "${tmp_git_stash}" ]]
	then
		echo ${j} >> /Users/Daniel/.tmp_git_all_status_out_clean
	else
		echo ${j} >> /Users/Daniel/.tmp_git_all_status_out_dirty
		echo ${tmp_git_status} >> /Users/Daniel/.tmp_git_all_status_out_dirty
		source /Users/Daniel/.dotfiles/rust/pier/line_break.sh >> /Users/Daniel/.tmp_git_all_status_out_dirty
		echo ${tmp_git_stash} >> /Users/Daniel/.tmp_git_all_status_out_dirty
		source /Users/Daniel/.dotfiles/rust/pier/line_break.sh >> /Users/Daniel/.tmp_git_all_status_out_dirty
	fi

done
cd $old_dir

# print clean
if [[ -e "/Users/Daniel/.tmp_git_all_status_out_clean" ]]
then
	source /Users/Daniel/.dotfiles/rust/pier/line_break.sh
	awk '
	function green(s) {
		printf "\033[0;32m" s "\033[0m "
	}
	function cyan(s) {
		printf "\033[0;36m" s "\033[0m "
	}
	{
		if ( NR == 1 )
		{
			print cyan("Updated Repositories");
			print "================================================================================";
		}
	}
	{
		print green($0);
	}
	END{
		print "================================================================================";
		print "================================================================================";
	}' /Users/Daniel/.tmp_git_all_status_out_clean
fi
rm /Users/Daniel/.tmp_git_all_status_out_clean

# print dirty
if [[ -e "/Users/Daniel/.tmp_git_all_status_out_dirty" ]]
then
	source /Users/Daniel/.dotfiles/rust/pier/line_break.sh
	awk '
	function red(s) {
		printf "\033[1;31m" s "\033[0m "
	}
	function green(s) {
		printf "\033[0;32m" s "\033[0m "
	}
	function blue(s) {
		printf "\033[1;34m" s "\033[0m "
	}
	function cyan(s) {
		printf "\033[0;36m" s "\033[0m "
	}
	function yellow(s) {
		printf "\033[1;33m" s "\033[0m "
	}
	function gray(s) {
		printf "\033[1;30m" s "\033[0m "
	}
	{
		if ( NR == 1 )
		{
			print cyan("Non-updated Repositories");
			print "================================================================================";
		}
	}
	{
		if ( $1 ~/^\// )
		{
			print green($0)
		}
		else if ( $1 ~/^stash/ )
		{
			print yellow($0)
		}
		else if ( $1 ~/[[:alpha:]]/ )
		{
			print blue($0)
		}
		else if ( $1 ~/\?/ )
		{
			print red($0)
		}
		else
		{
			print gray($0)
		}

	}
	END{
		print "================================================================================";
		print "================================================================================";
	}' /Users/Daniel/.tmp_git_all_status_out_dirty
fi
rm /Users/Daniel/.tmp_git_all_status_out_dirty
