
################################################################################

_default:
  @just --list

################################################################################

# link Cerberus archive
@ Cerberus:
  # HOME
  if [[ -d $HOME/.atom ]]; then rm -rf $HOME/.atom; fi                                                                                                       # purge before linking
  ln -svf $CERBERUS/atom $HOME/.atom                                                                                                                         # atom

  if [[ -d $HOME/.gitconfig.d ]]; then rm $HOME/.gitconfig.d; fi                                                                                             # purge before linking
  ln -svf $CERBERUS/gitconfig.d $HOME/.gitconfig.d                                                                                                           # gitconfig directory

  # rc files
  ln -svf $CERBERUS/gem/gemrc $HOME/.gemrc                                                                                                                   # gemrc
  ln -svf $CERBERUS/mplayer/mplayer $HOME/.mplayer                                                                                                           # mplayer
  ln -svf $CERBERUS/nano/nanorc $HOME/.nanorc                                                                                                                # nanorc

  # git files
  ln -svf $CERBERUS/git/gitconfig $HOME/.gitconfig                                                                                                           # gitconfig
  ln -svf $CERBERUS/git/gitignore_global $HOME/.gitignore_global                                                                                             # gitignore_global

  # toml files
  ln -svf $CERBERUS/procs/procs.toml $HOME/.procs.toml                                                                                                       # procs

  # config
  ln -svf $CERBERUS/alacritty $HOME/.config/                                                                                                                 # alacritty
  ln -svf $CERBERUS/bottom $HOME/.config/                                                                                                                    # bottom
  ln -svf $CERBERUS/cheat $HOME/.config/                                                                                                                     # cheat
  ln -svf $CERBERUS/karabiner $HOME/.config/                                                                                                                 # karabiner
  ln -svf $CERBERUS/khal $HOME/.config/                                                                                                                      # khal
  ln -svf $CERBERUS/gh/config.yml $HOME/.config/gh/                                                                                                          # gh
  ln -svf $CERBERUS/rstudio $HOME/.config/                                                                                                                   # rstudio
  ln -svf $CERBERUS/rstudio/keybindings $HOME/.R/rstudio/                                                                                                    # rstudio keybindings
  ln -svf $CERBERUS/rustfmt $HOME/.config/                                                                                                                   # rustfmt
  ln -svf $CERBERUS/nvim $HOME/.config                                                                                                                       # nvim directory
  ln -svf $CERBERUS/ranger $HOME/.config                                                                                                                     # ranger directory

  # local
  ln -svf $CERBERUS/rstudio/rstudio-desktop.json $HOME/.local/share/rstudio/                                                                                 # rstudio

  # distant
  ln -svf $CERBERUS/julia/startup.jl $HOME/.julia/config/                                                                                                    # julia startup
  ln -svf $CERBERUS/ssh/config $HOME/.ssh/                                                                                                                   # ssh config
  ln -svf $CERBERUS/broot/conf.toml "/Users/drivas/Library/Preferences/org.dystroy.broot/"                                                                   # broot config
  ln -svf $CERBERUS/lazycli/config.yml "/Users/drivas/Library/Application Support/lazycli/"                                                                  # lazycli config

  # purge before linking
  if [[ -d "/Users/drivas/Library/Application Support/gitui" ]]; then rm -rf "/Users/drivas/Library/Application Support/gitui"; fi
  ln -svf $CERBERUS/gitui "/Users/drivas/Library/Application Support/gitui"                                                                                  # gitui config directory

  # purge before linking
  if [[ -d "/Users/drivas/Library/Application Support/navi/cheats/drivas" ]]; then rm -rf "/Users/drivas/Library/Application Support/navi/cheats/drivas"; fi
  ln -svf $CERBERUS/navi "/Users/drivas/Library/Application Support/navi/cheats/drivas"                                                                      # navi cheats directory

  # sublime
  ln -svf "$CERBERUS/sublime/Default (OSX).sublime-keymap.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
  ln -svf "$CERBERUS/sublime/Package Control.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
  ln -svf "$CERBERUS/sublime/Preferences.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
  ln -svf "$CERBERUS/sublime/trailing_spaces.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/trailing_spaces.sublime-settings"
  ln -svf "$CERBERUS/sublime/RustEnhanced.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/RustEnhanced.sublime-settings"
  ln -svf "$CERBERUS/sublime/RustFmt.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/RustFmt.sublime-settings"
  ln -svf "$CERBERUS/sublime/GitGutter.sublime-settings.json" "/Users/drivas/Library/Application Support/Sublime Text 3/Packages/User/GitGutter.sublime-settings"

  # code
  ln -svf $CERBERUS/code/* "/Users/drivas/Library/Application Support/Code/User/"

  # @forked
  ln -svf $HOME/Factorem/Forked/preview-vim/preview-vim.json $CERBERUS/karabiner/assets/complex_modifications

################################################################################

# link Ianus archive
@ Ianus:
  # R
  if [[ -d $HOME/.Renviron.d ]]; then rm -rf $HOME/.Renviron.d; fi                 # purge before linking
  ln -svf $IANUS/R/Renviron.d $HOME/.Renviron.d                                    # renviron directory
  if [[ -d $HOME/.Rprofile.d ]]; then rm -rf $HOME/.Rprofile.d; fi                 # purge before linking
  ln -svf $IANUS/R/Rprofile.d $HOME/.Rprofile.d                                    # rprofile directory
  ln -svf $IANUS/R/vernacular_Rprofile.R $HOME/.Rprofile                           # rprofile

  # @HOME
  ln -svf $IANUS/pier/pier.toml $HOME/.pier.toml                                   # pier
  ln -svf $IANUS/tmux/3.1c.tmux.conf $HOME/.tmux.conf                              # tumx 3.1c
  ln -svf $IANUS/screen/4.08.00.screenrc $HOME/.screenrc                           # screen

  # @config
  ln -svf $IANUS/micro $HOME/.config                                               # micro directory
  ln -svf $IANUS/starship $HOME/.config                                            # starship directory
  ln -svf $IANUS/lsd $HOME/.config                                                 # lsd directory

  # shell
  ln -svf $IANUS/shell/terminal/vernacular_profile.sh $HOME/.profile               # terminal profile

  # bash
  if [[ ! -d $HOME/.bash ]]; then mkdir $HOME/.bash; fi                            # purge before linking
  ln -svf $IANUS/shell/bash/vernacular_bashrc.sh $HOME/.bashrc                     # bashrc
  ln -svf $IANUS/shell/bash/vernacular_bash_aliases.sh $HOME/.bash/bash_aliases.sh # bash aliases
  ln -svf $IANUS/shell/bash/fzf.bash $HOME/.bash                                   # fzf bash
  ln -svf $IANUS/shell/bash/bash_navi_patch.sh $HOME/.bash                         # bash navi patch

  # zsh
  if [[ ! -d $HOME/.zsh ]]; then mkdir $HOME/.zsh; fi                              # purge before linking
  ln -svf $IANUS/shell/zsh/vernacular_zshrc.sh $HOME/.zshrc                        # zshrc
  ln -svf $IANUS/shell/zsh/vernacular_zsh_aliases.sh $HOME/.zsh/zsh_aliases.sh     # zsh aliases
  ln -svf $IANUS/shell/zsh/fzf.zsh $HOME/.zsh                                      # fzf zsh
  ln -svf $IANUS/shell/zsh/vernacular_zsh_plugins.sh $HOME/.zsh/zsh_plugins.sh     # zsh plugins
  ln -svf $IANUS/shell/zsh/vernacular_zsh_plugins.txt $HOME/.zsh/zsh_plugins.txt   # zsh plugins
  ln -svf $IANUS/shell/zsh/zsh_pandoc_autocompletion.sh $HOME/.zsh                 # zsh completion
  ln -svf $IANUS/shell/zsh/zsh_navi_patch.sh $HOME/.zsh                            # zsh navi patch

  # fish
  ln -svf $IANUS/shell/fish/vernacular_config.fish $HOME/.config/fish/config.fish  # fish config

  # nushell
  ln -svf $IANUS/shell/nushell/* "/Users/drivas/Library/Application Support/org.nushell.nu/"

################################################################################
# Hermes
################################################################################

RemoteUppmax := "drivas@rackham.uppmax.uu.se"

# deliver archives to Uppmax
@ hermesUppmax:
  # justfile
  rsync -azvhP $ARCHIVE/justfile {{RemoteUppmax}}:/home/drivas/.archive/                      # justfile

  # directory
  rsync -azvhP $IANUS/pier {{RemoteUppmax}}:/home/drivas/.archive/ianus/                      # pier
  rsync -azvhP $IANUS/R {{RemoteUppmax}}:/home/drivas/.archive/ianus/                         # r
  rsync -azvhP $IANUS/screen {{RemoteUppmax}}:/home/drivas/.archive/ianus/                    # screen
  rsync -azvhP $IANUS/shell {{RemoteUppmax}}:/home/drivas/.archive/ianus/                     # shell
  rsync -azvhP $IANUS/starship {{RemoteUppmax}}:/home/drivas/.archive/ianus/                  # starship
  rsync -azvhP $IANUS/tmux {{RemoteUppmax}}:/home/drivas/.archive/ianus/                      # tmux
  rsync -azvhP $IANUS/micro/plug {{RemoteUppmax}}:/home/drivas/.archive/ianus/micro/          # micro plugins
  rsync -azvhP $IANUS/micro/bindings.json {{RemoteUppmax}}:/home/drivas/.archive/ianus/micro/ # micro bindings
  rsync -azvhP $IANUS/micro/settings.json {{RemoteUppmax}}:/home/drivas/.archive/ianus/micro/ # micro settings

################################################################################

RemotePawsey := "drivas@topaz.pawsey.org.au"

# deliver archives to Pawsey
@ hermesPawsey:
  # justfile
  rsync -azvhP $ARCHIVE/justfile {{RemotePawsey}}:/home/drivas/.archive/                      # justfile

  # directory
  rsync -azvhP $IANUS/pier {{RemotePawsey}}:/home/drivas/.archive/ianus/                      # pier
  rsync -azvhP $IANUS/R {{RemotePawsey}}:/home/drivas/.archive/ianus/                         # r
  rsync -azvhP $IANUS/screen {{RemotePawsey}}:/home/drivas/.archive/ianus/                    # screen
  rsync -azvhP $IANUS/shell {{RemotePawsey}}:/home/drivas/.archive/ianus/                     # shell
  rsync -azvhP $IANUS/starship {{RemotePawsey}}:/home/drivas/.archive/ianus/                  # starship
  rsync -azvhP $IANUS/micro/plug {{RemotePawsey}}:/home/drivas/.archive/ianus/micro/          # micro plugins
  rsync -azvhP $IANUS/micro/bindings.json {{RemotePawsey}}:/home/drivas/.archive/ianus/micro/ # micro bindings
  rsync -azvhP $IANUS/micro/settings.json {{RemotePawsey}}:/home/drivas/.archive/ianus/micro/ # micro settdirectory

################################################################################

# link archives Uppmax
@ Uppmax:
  # @HOME
  ln -svf $IANUS/R/Rprofile.d $HOME/.Rprofile.d                                # rprofile directory
  ln -svf $IANUS/R/uppmax_Rprofile.R $HOME/.Rprofile                           # rprofile
  ln -svf $IANUS/pier/pier.toml $HOME/.pier.toml                               # pier
  ln -svf $IANUS/tmux/2.5.tmux.conf $HOME/.tmux.conf                           # tmux 2.5
  ln -svf $IANUS/screen/4.01.00.screenrc $HOME/.screenrc                       # screen

  # @config
  ln -svf $IANUS/micro $HOME/.config                                           # micro directory
  ln -svf $IANUS/starship $HOME/.config                                        # starship directory

  # shell
  ln -svf $IANUS/shell/terminal/uppmax_profile.sh $HOME/.profile               # terminal profile

  # bash
  if [[ ! -d $HOME/.bash ]]; then mkdir $HOME/.bash; fi                        # purge before linking
  ln -svf $IANUS/shell/bash/uppmax_bashrc.sh $HOME/.bashrc                     # bashrc
  ln -svf $IANUS/shell/bash/uppmax_bash_profile.sh $HOME/.bash_profile         # bash profile
  ln -svf $IANUS/shell/bash/uppmax_bash_aliases.sh $HOME/.bash/bash_aliases.sh # bash aliases
  ln -svf $IANUS/shell/bash/fzf.bash $HOME/.bash                               # fzf bash

  # zsh
  if [[ ! -d $HOME/.zsh ]]; then mkdir $HOME/.zsh; fi                          # purge before linking
  ln -svf $IANUS/shell/zsh/uppmax_zshrc.sh $HOME/.zshrc                        # zshrc
  ln -svf $IANUS/shell/zsh/uppmax_zsh_aliases.sh $HOME/.zsh/zsh_aliases.sh     # zsh aliases
  ln -svf $IANUS/shell/zsh/fzf.zsh $HOME/.zsh                                  # fzf zsh
  ln -svf $IANUS/shell/zsh/uppmax_zsh_plugins.sh $HOME/.zsh/zsh_plugins.sh     # zsh plugins
  ln -svf $IANUS/shell/zsh/uppmax_zsh_plugins.txt $HOME/.zsh/zsh_plugins.txt   # zsh plugins
  ln -svf $IANUS/shell/zsh/zsh_pandoc_autocompletion.sh $HOME/.zsh             # zsh completion
  ln -svf $IANUS/shell/zsh/completion $HOME/.config/zsh_completion             # zsh completion

  # fish
  ln -svf $IANUS/shell/fish/uppmax_config.fish $HOME/.config/fish/config.fish  # fish config

################################################################################

# link archives Pawsey
@ Pawsey:
  # @HOME
  ln -svf $IANUS/R/Rprofile.d $HOME/.Rprofile.d                                # rprofile directory
  ln -svf $IANUS/R/pawsey_Rprofile.R $HOME/.Rprofile                           # rprofile
  ln -svf $IANUS/pier/pier.toml $HOME/.pier.toml                               # pier
  ln -svf $IANUS/screen/4.01.00.screenrc $HOME/.screenrc                       # screen

  # @config
  ln -svf $IANUS/micro $HOME/.config                                           # micro directory
  ln -svf $IANUS/starship $HOME/.config                                        # starship directory

  # shell
  ln -svf $IANUS/shell/terminal/pawsey_profile.sh $HOME/.profile               # terminal profile

  # bash
  if [[ ! -d $HOME/.bash ]]; then mkdir $HOME/.bash; fi                        # purge before linking
  ln -svf $IANUS/shell/bash/pawsey_bashrc.sh $HOME/.bashrc                     # bashrc
  ln -svf $IANUS/shell/bash/pawsey_bash_profile.sh $HOME/.bash_profile         # bash profile
  ln -svf $IANUS/shell/bash/pawsey_bash_aliases.sh $HOME/.bash/bash_aliases.sh # bash aliases
  ln -svf $IANUS/shell/bash/fzf.bash $HOME/.bash                               # fzf bash

  # zsh
  if [[ ! -d $HOME/.zsh ]]; then mkdir $HOME/.zsh; fi                          # purge before linking
  ln -svf $IANUS/shell/zsh/pawsey_zshrc.sh $HOME/.zshrc                        # zshrc
  ln -svf $IANUS/shell/zsh/pawsey_zsh_aliases.sh $HOME/.zsh/zsh_aliases.sh     # zsh aliases
  ln -svf $IANUS/shell/zsh/fzf.zsh $HOME/.zsh                                  # fzf zsh
  ln -svf $IANUS/shell/zsh/pawsey_zsh_plugins.sh $HOME/.zsh/zsh_plugins.sh     # zsh plugins
  ln -svf $IANUS/shell/zsh/pawsey_zsh_plugins.txt $HOME/.zsh/zsh_plugins.txt   # zsh plugins
  ln -svf $IANUS/shell/zsh/zsh_pandoc_autocompletion.sh $HOME/.zsh             # zsh completion
  ln -svf $IANUS/shell/zsh/completion $HOME/.config/zsh_completion             # zsh completion

  # # fish
  # ln -svf $IANUS/shell/fish/pawsey_config.fish $HOME/.config/fish/config.fish  # fish config

################################################################################
