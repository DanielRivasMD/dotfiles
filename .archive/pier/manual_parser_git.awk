#!/bin/awk -f

BEGIN{
	ORS="";
}
# colors
function yellow(s) {
	printf "\033[1;33m" s "\033[0m "
}

function gray(s) {
	printf "\033[1;30m" s "\033[0m "
}

function cyan(s) {
	printf "\033[0;36m" s "\033[0m "
}

{
	# identify command
	if ( $1 ~/^#$/ )
	{

		# print shortcut
		getline;
		print yellow($1) gray($2);

		# print commands
		for (i = 3; i <= NF; i++) {
			if ( $i ~/^--/ && $i !~/pretty/ ) {
				# print flags
				print cyan($i)
			} else {
				# print options
				print $i " ";
			}
		}
		print "\n";
	}
}
