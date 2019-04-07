#!/bin/bash

# Indicate which set to use. Cannot be empty
read -p "Which set should we use? " where
if [ -z $where ]
then
	echo -e "\n\tExiting!\nSet must be indicated"
	exit 1
fi

# tmux
ln -s -f ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# vim
ln -s -f ~/.dotfiles/vim/vimrc ~/.vimrc

# nano
ln -s -f ~/.dotfiles/nano/ ~/.nano
ln -s -f ~/.dotfiles/nano/nanorc ~/.nanorc

# R
ln -s -f ~/.dotfiles/R/Rprofile ~/.Rprofile

# bash
ln -s -f ~/.dotfiles/bash/${where}_bash_profile ~/.bash_profile
ln -s -f ~/.dotfiles/bash/${where}_bash_aliases ~/.bash_aliases
ln -s -f ~/.dotfiles/bash/${where}_bash_prompt.sh ~/.dotfiles/bash/bash_prompt.sh

# zsh
ln -s -f ~/.dotfiles/zsh/${where}_zsh_profile ~/.zprofile
ln -s -f ~/.dotfiles/zsh/${where}_zsh_aliases ~/.zaliases
ln -s -f ~/.dotfiles/zsh/${where}_zsh_prompt.sh ~/.dotfiles/zsh/zsh_prompt.sh
ln -s -f ~/.dotfiles/zsh/${where}_zsh_plugins.sh ~/.dotfiles/zsh/zsh_plugins.sh
ln -s -f ~/.dotfiles/zsh/${where}_zsh_plugins.txt ~/.dotfiles/zsh/zsh_plugins.txt

# common shell
ln -s -f ~/.dotfiles/terminal/${where}_profile ~/.terminal_profile
ln -s -f ~/.dotfiles/terminal/${where}_aliases ~/.terminal_aliases

# Only on local
if [ $where == 'local' ]
then
	ln -s -f ~/.dotfiles/bash/${where}_bashrc ~/.bashrc
	ln -s -f ~/.dotfiles/zsh/${where}_zshrc ~/.zshrc
fi

