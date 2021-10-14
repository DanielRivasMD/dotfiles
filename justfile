################################################################################

_default:
  @just --list

#################################################################################

# print justfile
print:
  bat justfile --language make

#################################################################################

# declarations
HOMERemote := "/home/drivas"
IanusRemote := "/home/drivas/.archive/ianus"
RemoteBin := "$HOME/Factorem/RemoteBin"

# Pawsey
PawseyID := "drivas@topaz.pawsey.org.au"
SoftwarePawsey := "/scratch/pawsey0263/drivas/software"

# Uppmax
UppmaxID := "drivas@rackham.uppmax.uu.se"

#################################################################################

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
  ln -svf $CERBERUS/gitui $HOME/.config                                                                                                                     # ranger directory
  ln -svf $CERBERUS/zellij $HOME/.config                                                                                                                     # ranger directory

  # local
  ln -svf $CERBERUS/rstudio/rstudio-desktop.json $HOME/.local/share/rstudio/                                                                                 # rstudio

  # distant
  ln -svf $CERBERUS/julia/startup.jl $HOME/.julia/config/                                                                                                    # julia startup
  ln -svf $CERBERUS/ssh/config $HOME/.ssh/                                                                                                                   # ssh config
  ln -svf $CERBERUS/broot/conf.hjson "/Users/drivas/Library/Application Support/org.dystroy.broot/"                                                          # broot config
  # ln -svf $CERBERUS/broot/conf.toml "/Users/drivas/Library/Preferences/org.dystroy.broot/"                                                                   # broot config
  ln -svf $CERBERUS/lazycli/config.yml "/Users/drivas/Library/Application Support/lazycli/"                                                                  # lazycli config

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

# deliver archives to Pawsey
@ HermesPawsey:
  # directory
  rsync -azvhP $IANUS/pier {{PawseyID}}:{{IanusRemote}}/                      # pier
  rsync -azvhP $IANUS/R {{PawseyID}}:{{IanusRemote}}/                         # r
  rsync -azvhP $IANUS/screen {{PawseyID}}:{{IanusRemote}}/                    # screen
  rsync -azvhP $IANUS/shell {{PawseyID}}:{{IanusRemote}}/                     # shell
  rsync -azvhP $IANUS/starship {{PawseyID}}:{{IanusRemote}}/                  # starship
  rsync -azvhP $IANUS/micro/plug {{PawseyID}}:{{IanusRemote}}/micro/          # micro plugins
  rsync -azvhP $IANUS/micro/bindings.json {{PawseyID}}:{{IanusRemote}}/micro/ # micro bindings
  rsync -azvhP $IANUS/micro/settings.json {{PawseyID}}:{{IanusRemote}}/micro/ # micro settdirectory

  # remote bin
  rsync -azvhPX {{RemoteBin}}/bin/bat {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/diamond {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/exa {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/fd {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/lsd {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/micro {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/rg {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/starship {{PawseyID}}:{{SoftwarePawsey}}/bin/
  # rsync -azvhPX {{RemoteBin}}/bin/xcp {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/xsv {{PawseyID}}:{{SoftwarePawsey}}/bin/
  rsync -azvhPX {{RemoteBin}}/bin/zoxide {{PawseyID}}:{{SoftwarePawsey}}/bin/

################################################################################
# Hephaestus
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
@ HephaestusPawsey:
  # @HOME
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/R/Rprofile.d {{HOMERemote}}/.Rprofile.d                                # rprofile directory
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/R/pawsey_Rprofile.R {{HOMERemote}}/.Rprofile                           # rprofile
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/screen/4.01.00.screenrc {{HOMERemote}}/.screenrc                       # screen

  # @config
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/micro {{HOMERemote}}/.config                                           # micro directory
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/starship {{HOMERemote}}/.config                                        # starship directory

  # shell
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/terminal/pawsey_profile.sh {{HOMERemote}}/.profile               # terminal profile

  # bash
  ssh {{PawseyID}} "if [[ ! -d {{HOMERemote}}/.bash ]]; then ssh {{PawseyID}} mkdir {{HOMERemote}}/.bash; fi"     # purge before linking
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/bash/pawsey_bashrc.sh {{HOMERemote}}/.bashrc                     # bashrc
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/bash/pawsey_bash_profile.sh {{HOMERemote}}/.bash_profile         # bash profile
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/bash/pawsey_bash_aliases.sh {{HOMERemote}}/.bash/bash_aliases.sh # bash aliases
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/bash/fzf.bash {{HOMERemote}}/.bash                               # fzf bash

  # zsh
  ssh {{PawseyID}} "if [[ ! -d {{HOMERemote}}/.zsh ]]; then ssh {{PawseyID}} mkdir {{HOMERemote}}/.zsh; fi"       # purge before linking
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/pawsey_zshrc.sh {{HOMERemote}}/.zshrc                        # zshrc
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/pawsey_zsh_aliases.sh {{HOMERemote}}/.zsh/zsh_aliases.sh     # zsh aliases
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/fzf.zsh {{HOMERemote}}/.zsh                                  # fzf zsh
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/pawsey_zsh_plugins.sh {{HOMERemote}}/.zsh/zsh_plugins.sh     # zsh plugins
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/pawsey_zsh_plugins.txt {{HOMERemote}}/.zsh/zsh_plugins.txt   # zsh plugins
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/zsh_pandoc_autocompletion.sh {{HOMERemote}}/.zsh             # zsh completion
  ssh {{PawseyID}} ln -svf {{IanusRemote}}/shell/zsh/completion {{HOMERemote}}/.config/zsh_completion             # zsh completion

  # link executables
  ssh {{PawseyID}} "if [[ ! -d {{HOMERemote}}/bin ]]; then ssh {{PawseyID}} rm -rf {{HOMERemote}}/bin; fi"        # purge before linking
  ssh {{PawseyID}} ln -svf {{SoftwarePawsey}}/bin {{HOMERemote}}/bin

################################################################################
# Zaqar
################################################################################

# download cluster executables
@ zaqarBin:
  # bat
  wget https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/
  mv {{RemoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl/bat {{RemoteBin}}/
  rm -rf {{RemoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl

  # diamond
  wget https://github.com/bbuchfink/diamond/releases/download/v2.0.12/diamond-linux64.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/diamond-linux64.tar.gz --directory {{RemoteBin}}/

  # exa
  wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip --directory-prefix {{RemoteBin}}/
  unzip -o {{RemoteBin}}/exa-linux-x86_64-musl-v0.10.1.zip -d {{RemoteBin}}/
  mv {{RemoteBin}}/bin/exa {{RemoteBin}}/
  rm -rf {{RemoteBin}}/bin
  rm -rf {{RemoteBin}}/completions
  rm -rf {{RemoteBin}}/man

  # fd
  wget https://github.com/sharkdp/fd/releases/download/v8.2.1/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/
  mv {{RemoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl/fd {{RemoteBin}}/
  rm -rf {{RemoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl

  # lsd
  wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/
  mv {{RemoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl/lsd {{RemoteBin}}/
  rm -rf {{RemoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl

  # micro
  wget https://github.com/zyedidia/micro/releases/download/v2.0.10/micro-2.0.10-linux-arm64.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/micro-2.0.10-linux-arm64.tar.gz --directory {{RemoteBin}}/
  mv {{RemoteBin}}/micro-2.0.10/micro {{RemoteBin}}/
  rm -rf {{RemoteBin}}/micro-2.0.10

  # ripgrep
  wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/
  mv {{RemoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl/rg {{RemoteBin}}/
  rm -rf {{RemoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl

  # starship
  wget https://github.com/starship/starship/releases/download/v0.58.0/starship-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/starship-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/

  # xcp
  # wget https://github.com/tarka/xcp/archive/refs/tags/v0.9.0.tar.gz --directory-prefix {{RemoteBin}}/

  # xsv
  wget https://github.com/BurntSushi/xsv/releases/download/0.13.0/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/

  # zoxide
  wget https://github.com/ajeetdsouza/zoxide/releases/download/v0.7.6/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{RemoteBin}}/
  tar -xvf {{RemoteBin}}/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz --directory {{RemoteBin}}/
  mv {{RemoteBin}}/zoxide-x86_64-unknown-linux-musl/zoxide {{RemoteBin}}/
  rm -rf {{RemoteBin}}/zoxide-x86_64-unknown-linux-musl

################################################################################
