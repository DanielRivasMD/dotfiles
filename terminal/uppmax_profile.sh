#!/bin/bash

rsync -zaP \
	--exclude atom \
	--exclude mplayer \
	--exclude .git \
	--exclude .gitignore \
	--exclude bash/bash_prompt.sh \
	--exclude zsh/zsh_prompt.sh \
	--exclude zsh/zsh_plugins.sh \
	--exclude zsh/zsh_plugins.txt \
	~/.dotfiles \
	drivas@rackham.uppmax.uu.se:~/

drivas@rackham.uppmax.uu.se:~/.dotfiles/terminal/soft_links.sh
