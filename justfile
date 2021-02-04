
################################################################################

# link Cerberus archive
cerberus:
  # purge before linking
  # HOME directories
  @ if [[ -d ${HOME}/.atom ]]; then rm -rf ${HOME}/.atom; fi
  @ ln -svf ${CERBERUS}/atom ${HOME}/.atom

  @ if [[ -d ${HOME}/.gitconfig.d ]]; then rm ${HOME}/.gitconfig.d; fi
  @ ln -svf ${CERBERUS}/gitconfig.d ${HOME}/.gitconfig.d

  # rc files
  @ ln -svf ${CERBERUS}/gem/gemrc ${HOME}/.gemrc
  @ ln -svf ${CERBERUS}/mplayer/mplayer ${HOME}/.mplayer
  @ ln -svf ${CERBERUS}/nano/nanorc ${HOME}/.nanorc

  # git files
  @ ln -svf ${CERBERUS}/git/gitconfig ${HOME}/.gitconfig
  @ ln -svf ${CERBERUS}/git/gitignore_global ${HOME}/.gitignore_global

  # toml files
  @ ln -svf ${CERBERUS}/procs/procs.toml ${HOME}/.procs.toml

  # @config
  @ ln -svf ${CERBERUS}/alacritty ${HOME}/.config/
  @ ln -svf ${CERBERUS}/bottom ${HOME}/.config/
  @ ln -svf ${CERBERUS}/cheat ${HOME}/.config/
  @ ln -svf ${CERBERUS}/karabiner ${HOME}/.config/
  @ ln -svf ${HOME}/Factorem/Forked/preview-vim/preview-vim.json ${CERBERUS}/karabiner/assets/complex_modifications
  @ ln -svf ${CERBERUS}/khal ${HOME}/.config/
  @ ln -svf ${CERBERUS}/gh/config.yml ${HOME}/.config/gh/
  @ ln -svf ${CERBERUS}/rstudio ${HOME}/.config/
  @ ln -svf ${CERBERUS}/rustfmt ${HOME}/.config/

  @ ln -svf ${CERBERUS}/rstudio/keybindings ${HOME}/.R/rstudio/

  # @local
  @ ln -svf ${CERBERUS}/rstudio/rstudio-desktop.json ${HOME}/.local/share/rstudio/

  # @distant
  @ ln -svf ${CERBERUS}/julia/startup.jl ${HOME}/.julia/config/
  @ ln -svf ${CERBERUS}/ssh/config ${HOME}/.ssh/
  @ ln -svf "${CERBERUS}/sublime/Default (OSX).sublime-keymap.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
  @ ln -svf "${CERBERUS}/sublime/Package Control.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
  @ ln -svf "${CERBERUS}/sublime/Preferences.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
  @ ln -svf "${CERBERUS}/sublime/trailing_spaces.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/trailing_spaces.sublime-settings"
  @ ln -svf "${CERBERUS}/sublime/RustEnhanced.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/RustEnhanced.sublime-settings"
  @ ln -svf "${CERBERUS}/sublime/RustFmt.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/RustFmt.sublime-settings"
  @ ln -svf "${CERBERUS}/sublime/GitGutter.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/GitGutter.sublime-settings"
  @ ln -svf ${CERBERUS}/code/* "/Users/drivas/Library/Application Support/Code/User/"

################################################################################

# link Ianus archive
ianus:
  # purge before linking

  # vim
  @ if [[ -d ${HOME}/.vim ]]; then rm -rf ${HOME}/.vim; fi
  @ ln -svf ${IANUS}/vim ${HOME}/.vim
  @ ln -svf ${IANUS}/vim/vimrc ${HOME}/.vimrc

  # R
  @ if [[ -d ${HOME}/.Renviron.d ]]; then rm -rf ${HOME}/.Renviron.d; fi
  @ ln -svf ${IANUS}/R/Renviron.d ${HOME}/.Renviron.d

  @ if [[ -d ${HOME}/.Rprofile.d ]]; then rm -rf ${HOME}/.Rprofile.d; fi
  @ ln -svf ${IANUS}/R/Rprofile.d ${HOME}/.Rprofile.d

  # pier
  @ ln -svf ${IANUS}/pier/pier.toml ${HOME}/.pier.toml

  # tmux
  @ ln -svf ${IANUS}/tmux/3.1c.tmux.conf ${HOME}/.tmux.conf

  # micro
  @ ln -svf ${IANUS}/micro ${HOME}/.config

  # R
  @ ln -svf ${IANUS}/R/vernacular_Rprofile.R ${HOME}/.Rprofile

  # screen
  @ ln -svf ${IANUS}/screen/screenrc ${HOME}/.screenrc

  # starship
  @ ln -svf ${IANUS}/starship ${HOME}/.config

  # terminal
  @ ln -svf ${IANUS}/shell/terminal/vernacular_profile.sh ${HOME}/.profile

  # bash
  @ if [[ ! -d ${HOME}/.bash ]]; then mkdir ${HOME}/.bash; fi

  @ ln -svf ${IANUS}/shell/bash/fzf.bash ${HOME}/.bash
  @ ln -svf ${IANUS}/shell/bash/vernacular_bash_aliases.sh ${HOME}/.bash/bash_aliases.sh

  @ ln -svf ${IANUS}/shell/bash/vernacular_bashrc.sh ${HOME}/.bashrc

  # zsh
  @ if [[ ! -d ${HOME}/.zsh ]]; then mkdir ${HOME}/.zsh; fi

  @ ln -svf ${IANUS}/shell/zsh/fzf.zsh ${HOME}/.zsh
  @ ln -svf ${IANUS}/shell/zsh/vernacular_zsh_aliases.sh ${HOME}/.zsh/zsh_aliases.sh
  @ ln -svf ${IANUS}/shell/zsh/vernacular_zsh_plugins.sh ${HOME}/.zsh/zsh_plugins.sh
  @ ln -svf ${IANUS}/shell/zsh/vernacular_zsh_plugins.txt ${HOME}/.zsh/zsh_plugins.txt
  @ ln -svf ${IANUS}/shell/zsh/zsh_pandoc_autocompletion.sh ${HOME}/.zsh
  @ ln -svf ${IANUS}/shell/zsh/completion ${HOME}/.config/zsh_completion

  @ ln -svf ${IANUS}/shell/zsh/vernacular_zshrc.sh ${HOME}/.zshrc

  # fish
  @ ln -svf ${IANUS}/shell/fish/vernacular_config.fish ${HOME}/.config/fish/config.fish

################################################################################

RemotePawsey := "drivas@topaz.pawsey.org.au"

# deliver archives to Pawsey
hermesPawsey:
  # justfile
  @ rsync -azvhP ${ARCHIVE}/justfile {{RemotePawsey}}:/home/drivas/.archive/

  # micro
  @ rsync -azvhP ${IANUS}/micro/plug {{RemotePawsey}}:/home/drivas/.archive/ianus/micro/
  @ rsync -azvhP ${IANUS}/micro/bindings.json {{RemotePawsey}}:/home/drivas/.archive/ianus/micro/
  @ rsync -azvhP ${IANUS}/micro/settings.json {{RemotePawsey}}:/home/drivas/.archive/ianus/micro/

  # pier
  @ rsync -azvhP ${IANUS}/pier {{RemotePawsey}}:/home/drivas/.archive/ianus/

  # R
  @ rsync -azvhP ${IANUS}/R {{RemotePawsey}}:/home/drivas/.archive/ianus/

  # screen
  @ rsync -azvhP ${IANUS}/screen {{RemotePawsey}}:/home/drivas/.archive/ianus/

  # shell
  @ rsync -azvhP ${IANUS}/shell {{RemotePawsey}}:/home/drivas/.archive/ianus/

  # starship
  @ rsync -azvhP ${IANUS}/starship {{RemotePawsey}}:/home/drivas/.archive/ianus/

  # tmux
  @ rsync -azvhP ${IANUS}/tmux {{RemotePawsey}}:/home/drivas/.archive/ianus/

  # vim
  @ rsync -azvhP ${IANUS}/vim/bundle {{RemotePawsey}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/functions.vim {{RemotePawsey}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/keybindings.vim {{RemotePawsey}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/plugins.vim {{RemotePawsey}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/vimrc {{RemotePawsey}}:/home/drivas/.archive/ianus/vim/

################################################################################

RemoteUppmax := "drivas@rackham.uppmax.uu.se"

# deliver archives to Uppmax
hermesUppmax:
  # justfile
  @ rsync -azvhP ${ARCHIVE}/justfile {{RemoteUppmax}}:/home/drivas/.archive/

  # micro
  @ rsync -azvhP ${IANUS}/micro/plug {{RemoteUppmax}}:/home/drivas/.archive/ianus/micro/
  @ rsync -azvhP ${IANUS}/micro/bindings.json {{RemoteUppmax}}:/home/drivas/.archive/ianus/micro/
  @ rsync -azvhP ${IANUS}/micro/settings.json {{RemoteUppmax}}:/home/drivas/.archive/ianus/micro/

  # pier
  @ rsync -azvhP ${IANUS}/pier {{RemoteUppmax}}:/home/drivas/.archive/ianus/

  # R
  @ rsync -azvhP ${IANUS}/R {{RemoteUppmax}}:/home/drivas/.archive/ianus/

  # screen
  @ rsync -azvhP ${IANUS}/screen {{RemoteUppmax}}:/home/drivas/.archive/ianus/

  # shell
  @ rsync -azvhP ${IANUS}/shell {{RemoteUppmax}}:/home/drivas/.archive/ianus/

  # starship
  @ rsync -azvhP ${IANUS}/starship {{RemoteUppmax}}:/home/drivas/.archive/ianus/

  # tmux
  @ rsync -azvhP ${IANUS}/tmux {{RemoteUppmax}}:/home/drivas/.archive/ianus/

  # vim
  @ rsync -azvhP ${IANUS}/vim/bundle {{RemoteUppmax}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/functions.vim {{RemoteUppmax}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/keybindings.vim {{RemoteUppmax}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/plugins.vim {{RemoteUppmax}}:/home/drivas/.archive/ianus/vim/
  @ rsync -azvhP ${IANUS}/vim/vimrc {{RemoteUppmax}}:/home/drivas/.archive/ianus/vim/

################################################################################

# link archives @ Uppmax
Uppmax:
  # vim
  @ if [[ -d ${HOME}/.vim ]]; then rm ${HOME}/.vim; fi

  @ ln -svf ${IANUS}/vim ${HOME}/.vim
  @ ln -svf ${IANUS}/vim/vimrc ${HOME}/.vimrc

  # pier
  @ ln -svf ${IANUS}/pier/pier.toml ${HOME}/.pier.toml

  # tmux
  @ ln -svf ${IANUS}/tmux/2.5.tmux.conf ${HOME}/.tmux.conf

  # micro
  @ ln -svf ${IANUS}/micro ${HOME}/.config

  # R
  @ ln -svf ${IANUS}/R/uppmax_Rprofile.R ${HOME}/.Rprofile

  # terminal
  @ ln -svf ${IANUS}/shell/terminal/uppmax_profile.sh ${HOME}/.profile

  # bash
  @ if [[ ! -d ${HOME}/.bash ]]; then mkdir ${HOME}/.bash; fi

  @ ln -svf ${IANUS}/shell/bash/fzf.bash ${HOME}/.bash
  @ ln -svf ${IANUS}/shell/bash/uppmax_bash_aliases.sh ${HOME}/.bash/bash_aliases.sh

  @ ln -svf ${IANUS}/shell/bash/uppmax_bash_profile.sh ${HOME}/.bash_profile
  @ ln -svf ${IANUS}/shell/bash/uppmax_bashrc.sh ${HOME}/.bashrc

  # zsh
  @ if [[ ! -d ${HOME}/.zsh ]]; then mkdir ${HOME}/.zsh; fi

  @ ln -svf ${IANUS}/shell/zsh/fzf.zsh ${HOME}/.zsh
  @ ln -svf ${IANUS}/shell/zsh/uppmax_zsh_aliases.sh ${HOME}/.zsh/zsh_aliases.sh
  @ ln -svf ${IANUS}/shell/zsh/uppmax_zsh_plugins.sh ${HOME}/.zsh/zsh_plugins.sh
  @ ln -svf ${IANUS}/shell/zsh/uppmax_zsh_plugins.txt ${HOME}/.zsh/zsh_plugins.txt
  @ ln -svf ${IANUS}/shell/zsh/zsh_pandoc_autocompletion.sh ${HOME}/.zsh
  @ ln -svf ${IANUS}/shell/zsh/completion ${HOME}/.config/zsh_completion

  @ ln -svf ${IANUS}/shell/zsh/uppmax_zshrc.sh ${HOME}/.zshrc

  # fish
  @ ln -svf ${IANUS}/shell/fish/uppmax_config.fish ${HOME}/.config/fish/config.fish

################################################################################

# link archives @ Pawsey
Pawsey:
  # vim
  @ if [[ -d ${HOME}/.vim ]]; then rm ${HOME}/.vim; fi

  @ ln -svf ${IANUS}/vim ${HOME}/.vim
  @ ln -svf ${IANUS}/vim/vimrc ${HOME}/.vimrc

  # pier
  @ ln -svf ${IANUS}/pier/pier.toml ${HOME}/.pier.toml

  # tmux
  @ ln -svf ${IANUS}/tmux/3.1b.tmux.conf ${HOME}/.tmux.conf

  # micro
  @ ln -svf ${IANUS}/micro ${HOME}/.config

  # R
  @ ln -svf ${IANUS}/R/pawsey_Rprofile.R ${HOME}/.Rprofile

  # terminal
  @ ln -svf ${IANUS}/shell/terminal/pawsey_profile.sh ${HOME}/.profile

  # bash
  @ if [[ ! -d ${HOME}/.bash ]]; then mkdir ${HOME}/.bash; fi

  @ ln -svf ${IANUS}/shell/bash/fzf.bash ${HOME}/.bash
  @ ln -svf ${IANUS}/shell/bash/pawsey_bash_aliases.sh ${HOME}/.bash/bash_aliases.sh

  @ ln -svf ${IANUS}/shell/bash/pawsey_bash_profile.sh ${HOME}/.bash_profile
  @ ln -svf ${IANUS}/shell/bash/pawsey_bashrc.sh ${HOME}/.bashrc

  # zsh
  @ if [[ ! -d ${HOME}/.zsh ]]; then mkdir ${HOME}/.zsh; fi

  @ ln -svf ${IANUS}/shell/zsh/fzf.zsh ${HOME}/.zsh
  @ ln -svf ${IANUS}/shell/zsh/pawsey_zsh_aliases.sh ${HOME}/.zsh/zsh_aliases.sh
  @ ln -svf ${IANUS}/shell/zsh/pawsey_zsh_plugins.sh ${HOME}/.zsh/zsh_plugins.sh
  @ ln -svf ${IANUS}/shell/zsh/pawsey_zsh_plugins.txt ${HOME}/.zsh/zsh_plugins.txt
  @ ln -svf ${IANUS}/shell/zsh/zsh_pandoc_autocompletion.sh ${HOME}/.zsh
  @ ln -svf ${IANUS}/shell/zsh/completion ${HOME}/.config/zsh_completion

  @ ln -svf ${IANUS}/shell/zsh/pawsey_zshrc.sh ${HOME}/.zshrc

  # fish
  @ ln -svf ${IANUS}/shell/fish/pawsey_config.fish ${HOME}/.config/fish/config.fish

################################################################################
