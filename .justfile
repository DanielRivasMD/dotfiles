################################################################################

_default:
  @just --list

#################################################################################

# print justfile
print:
  bat .justfile --language make

#################################################################################

# declarations
_home := '$HOME'
_archive := _home + '/.archive'
_cerberus := _archive + '/cerberus'
_ianus := _archive + '/ianus'
_appSuport := _home + '"/Library/Application Support/"'

# cerberus
_brootConf := _appSuport + '"/org.dystroy.broot/"'
_codeConf := _appSuport + '/Code/User/'
_lazycliConf := _appSuport + "/lazycli/"
_naviConf := _appSuport + '/navi/cheats/drivas'

_sublime := _appSuport + '"Sublime Text 3/Packages/User"'
_sublKeymapOrigin := _sublime + '"/Default (OSX).sublime-keymap"'
_sublKeymapTarget := _cerberus + '"/sublime/Default (OSX).sublime-keymap.json"'
_sublPackageOrigin := _sublime + '"/Package Control.sublime-settings"'
_sublPackageTarget := _cerberus + '"/sublime/Package Control.sublime-settings.json"'
_sublSettingOrigin := _sublime + '"/Preferences.sublime-settings"'
_sublSettingTarget := _cerberus + '"/sublime/Preferences.sublime-settings.json"'
_sublTrailOrigin := _sublime + '"/trailing_spaces.sublime-settings"'
_sublTrailTarget := _cerberus + '"/sublime/trailing_spaces.sublime-settings.json"'
_sublRustOrigin := _sublime + '"/RustEnhanced.sublime-settings"'
_sublRustTarget := _cerberus + '"/sublime/RustEnhanced.sublime-settings.json"'
_sublRfmtOrigin := _sublime + '"/RustFmt.sublime-settings"'
_sublRfmtTarget := _cerberus + '"/sublime/RustFmt.sublime-settings.json"'
_sublGitOrigin := _sublime + '"/GitGutter.sublime-settings"'
_sublGitTarget := _cerberus + '"/sublime/GitGutter.sublime-settings.json"'

# ianus
_shell := _ianus + '/shell'
_terminal := _shell + '/terminal'
_bash := _shell + '/bash'
_fish := _shell + '/fish'
_zsh := _shell + '/zsh'
_nushell := _shell + '/nushell'
_nushellConf := _appSuport + '/org.nushell.nu/'

# remote
_remoteBin := '{{_home}}/Factorem/_remoteBin'
_HOMEremote := '/home/drivas'
_ianusRemote := _HOMEremote + '/.archive/ianus'
_shellRemote := _ianusRemote + '/shell'
_terminalRemote := _shellRemote + '/terminal'
_bashRemote := _shellRemote + '/bash'
_fishRemote := _shellRemote + '/fish'
_zshRemote := _shellRemote + '/zsh'

# Pawsey
_pawseyID := 'drivas@topaz.pawsey.org.au'
_softwarePawsey := '/scratch/pawsey0263/drivas/software'

# Uppmax
_uppmaxID := 'drivas@rackham.uppmax.uu.se'
_softwareUppmax := ''

#################################################################################

# link Cerberus archive
@ Cerberus:
  # HOME
  if [[ -d {{_home}}/.atom ]]; then rm -rf {{_home}}/.atom; fi                        # purge before linking
  ln -svf {{_cerberus}}/atom {{_home}}/.atom                                          # atom

  if [[ -d {{_home}}/.gitconfig.d ]]; then rm {{_home}}/.gitconfig.d; fi              # purge before linking
  ln -svf {{_cerberus}}/gitconfig.d {{_home}}/.gitconfig.d                            # gitconfig directory

  # rc files
  ln -svf {{_cerberus}}/gem/gemrc {{_home}}/.gemrc                                    # gemrc
  ln -svf {{_cerberus}}/mplayer/mplayer {{_home}}/.mplayer                            # mplayer
  ln -svf {{_cerberus}}/nano/nanorc {{_home}}/.nanorc                                 # nanorc

  # git files
  ln -svf {{_cerberus}}/git/gitconfig {{_home}}/.gitconfig                            # gitconfig
  ln -svf {{_cerberus}}/git/gitignore_global {{_home}}/.gitignore_global              # gitignore_global

  # toml files
  ln -svf {{_cerberus}}/procs/procs.toml {{_home}}/.procs.toml                        # procs

  # config
  ln -svf {{_cerberus}}/alacritty {{_home}}/.config/                                  # alacritty
  ln -svf {{_cerberus}}/bottom {{_home}}/.config/                                     # bottom
  ln -svf {{_cerberus}}/cheat {{_home}}/.config/                                      # cheat
  ln -svf {{_cerberus}}/karabiner {{_home}}/.config/                                  # karabiner
  ln -svf {{_cerberus}}/khal {{_home}}/.config/                                       # khal
  ln -svf {{_cerberus}}/gh/config.yml {{_home}}/.config/gh/                           # gh
  ln -svf {{_cerberus}}/rstudio {{_home}}/.config/                                    # rstudio
  ln -svf {{_cerberus}}/rstudio/keybindings {{_home}}/.R/rstudio/                     # rstudio keybindings
  ln -svf {{_cerberus}}/rustfmt {{_home}}/.config/                                    # rustfmt
  ln -svf {{_cerberus}}/nvim {{_home}}/.config                                        # nvim directory
  ln -svf {{_cerberus}}/ranger {{_home}}/.config                                      # ranger directory
  ln -svf {{_cerberus}}/gitui {{_home}}/.config                                       # ranger directory
  ln -svf {{_cerberus}}/zellij {{_home}}/.config                                      # ranger directory

  # local
  ln -svf {{_cerberus}}/rstudio/rstudio-desktop.json {{_home}}/.local/share/rstudio/  # rstudio

  # code
  ln -svf {{_cerberus}}/code/* {{_codeConf}}

  # distant
  ln -svf {{_cerberus}}/julia/startup.jl {{_home}}/.julia/config/                     # julia startup
  ln -svf {{_cerberus}}/ssh/config {{_home}}/.ssh/                                    # ssh config
  ln -svf {{_cerberus}}/broot/conf.hjson {{_brootConf}}                               # broot config
  ln -svf {{_cerberus}}/lazycli/config.yml {{_lazycliConf}}                           # lazycli config

  # purge before linking
  if [[ -d {{_naviConf}} ]]; then rm -rf {{_naviConf}}; fi
  ln -svf {{_cerberus}}/navi {{_naviConf}}                                            # navi cheats directory

  # sublime
  ln -svf {{_sublKeymapTarget}} {{_sublKeymapOrigin}}
  ln -svf {{_sublPackageTarget}} {{_sublPackageOrigin}}
  ln -svf {{_sublSettingTarget}} {{_sublSettingOrigin}}
  ln -svf {{_sublTrailTarget}} {{_sublTrailOrigin}}
  ln -svf {{_sublRustTarget}} {{_sublRustOrigin}}
  ln -svf {{_sublRfmtTarget}} {{_sublRfmtOrigin}}
  ln -svf {{_sublGitTarget}} {{_sublGitOrigin}}

  # @forked
  ln -svf {{_home}}/Factorem/Forked/preview-vim/preview-vim.json {{_cerberus}}/karabiner/assets/complex_modifications

################################################################################

# link Ianus archive
@ Ianus:
  # R
  if [[ -d {{_home}}/.Renviron.d ]]; then rm -rf {{_home}}/.Renviron.d; fi      # purge before linking
  ln -svf {{_ianus}}/R/Renviron.d {{_home}}/.Renviron.d                         # renviron directory
  if [[ -d {{_home}}/.Rprofile.d ]]; then rm -rf {{_home}}/.Rprofile.d; fi      # purge before linking
  ln -svf {{_ianus}}/R/Rprofile.d {{_home}}/.Rprofile.d                         # rprofile directory
  ln -svf {{_ianus}}/R/vernacular_Rprofile.R {{_home}}/.Rprofile                # rprofile

  # @HOME
  ln -svf {{_ianus}}/pier/pier.toml {{_home}}/.pier.toml                        # pier
  ln -svf {{_ianus}}/tmux/3.1c.tmux.conf {{_home}}/.tmux.conf                   # tumx 3.1c
  ln -svf {{_ianus}}/screen/4.08.00.screenrc {{_home}}/.screenrc                # screen

  # @config
  ln -svf {{_ianus}}/micro {{_home}}/.config                                    # micro directory
  ln -svf {{_ianus}}/starship {{_home}}/.config                                 # starship directory
  ln -svf {{_ianus}}/lsd {{_home}}/.config                                      # lsd directory

  # shell
  ln -svf {{_terminal}}/vernacular_profile.sh {{_home}}/.profile                # terminal profile

  # bash
  if [[ ! -d {{_home}}/.bash ]]; then mkdir {{_home}}/.bash; fi                 # purge before linking
  ln -svf {{_bash}}/vernacular_bashrc.sh {{_home}}/.bashrc                      # bashrc
  ln -svf {{_bash}}/vernacular_bash_aliases.sh {{_home}}/.bash/bash_aliases.sh  # bash aliases
  ln -svf {{_bash}}/fzf.bash {{_home}}/.bash                                    # fzf bash
  ln -svf {{_bash}}/bash_navi_patch.sh {{_home}}/.bash                          # bash navi patch

  # zsh
  if [[ ! -d {{_home}}/.zsh ]]; then mkdir {{_home}}/.zsh; fi                   # purge before linking
  ln -svf {{_zsh}}/vernacular_zshrc.sh {{_home}}/.zshrc                         # zshrc
  ln -svf {{_zsh}}/vernacular_zsh_aliases.sh {{_home}}/.zsh/zsh_aliases.sh      # zsh aliases
  ln -svf {{_zsh}}/fzf.zsh {{_home}}/.zsh                                       # fzf zsh
  ln -svf {{_zsh}}/vernacular_zsh_plugins.sh {{_home}}/.zsh/zsh_plugins.sh      # zsh plugins
  ln -svf {{_zsh}}/vernacular_zsh_plugins.txt {{_home}}/.zsh/zsh_plugins.txt    # zsh plugins
  ln -svf {{_zsh}}/zsh_pandoc_autocompletion.sh {{_home}}/.zsh                  # zsh completion
  ln -svf {{_zsh}}/zsh_just_patch.sh {{_home}}/.zsh                             # zsh just patch
  ln -svf {{_zsh}}/zsh_navi_patch.sh {{_home}}/.zsh                             # zsh navi patch

  # fish
  ln -svf {{_fish}}/vernacular_config.fish {{_home}}/.config/fish/config.fish   # fish config

  # nushell
  ln -svf {{_nushell}}/* {{_nushellConf}}                                       # nushell config

################################################################################
# Hermes
################################################################################

# deliver archives to Uppmax
@ HermesUppmax:
  # directory
  rsync -azvhP {{_ianus}}/pier {{_uppmaxID}}:{{_ianusRemote}}/                      # pier
  rsync -azvhP {{_ianus}}/R {{_uppmaxID}}:{{_ianusRemote}}/                         # r
  rsync -azvhP {{_ianus}}/screen {{_uppmaxID}}:{{_ianusRemote}}/                    # screen
  rsync -azvhP {{_ianus}}/shell {{_uppmaxID}}:{{_ianusRemote}}/                     # shell
  rsync -azvhP {{_ianus}}/starship {{_uppmaxID}}:{{_ianusRemote}}/                  # starship
  rsync -azvhP {{_ianus}}/tmux {{_uppmaxID}}:{{_ianusRemote}}/                      # tmux
  rsync -azvhP {{_ianus}}/micro/plug {{_uppmaxID}}:{{_ianusRemote}}/micro/          # micro plugins
  rsync -azvhP {{_ianus}}/micro/bindings.json {{_uppmaxID}}:{{_ianusRemote}}/micro/ # micro bindings
  rsync -azvhP {{_ianus}}/micro/settings.json {{_uppmaxID}}:{{_ianusRemote}}/micro/ # micro settings

  # remote bin
  rsync -azvhPX {{_remoteBin}}/bin/bat {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/diamond {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/exa {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/fd {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/lsd {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/micro {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/rg {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/starship {{_pawseyID}}:{{_softwareUppmax}}/bin/
  # rsync -azvhPX {{_remoteBin}}/bin/xcp {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/xsv {{_pawseyID}}:{{_softwareUppmax}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/zoxide {{_pawseyID}}:{{_softwareUppmax}}/bin/

################################################################################

# deliver archives to Pawsey
@ HermesPawsey:
  # directory
  rsync -azvhP {{_ianus}}/pier {{_pawseyID}}:{{_ianusRemote}}/                      # pier
  rsync -azvhP {{_ianus}}/R {{_pawseyID}}:{{_ianusRemote}}/                         # r
  rsync -azvhP {{_ianus}}/screen {{_pawseyID}}:{{_ianusRemote}}/                    # screen
  rsync -azvhP {{_ianus}}/shell {{_pawseyID}}:{{_ianusRemote}}/                     # shell
  rsync -azvhP {{_ianus}}/starship {{_pawseyID}}:{{_ianusRemote}}/                  # starship
  rsync -azvhP {{_ianus}}/micro/plug {{_pawseyID}}:{{_ianusRemote}}/micro/          # micro plugins
  rsync -azvhP {{_ianus}}/micro/bindings.json {{_pawseyID}}:{{_ianusRemote}}/micro/ # micro bindings
  rsync -azvhP {{_ianus}}/micro/settings.json {{_pawseyID}}:{{_ianusRemote}}/micro/ # micro settdirectory

  # remote bin
  rsync -azvhPX {{_remoteBin}}/bin/bat {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/diamond {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/exa {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/fd {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/lsd {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/micro {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/rg {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/starship {{_pawseyID}}:{{_softwarePawsey}}/bin/
  # rsync -azvhPX {{_remoteBin}}/bin/xcp {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/xsv {{_pawseyID}}:{{_softwarePawsey}}/bin/
  rsync -azvhPX {{_remoteBin}}/bin/zoxide {{_pawseyID}}:{{_softwarePawsey}}/bin/

################################################################################
# Hephaestus
################################################################################

# link archives Uppmax
@ HephaestusUppmax:
  # @HOME
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/R/Rprofile.d {{_HOMEremote}}/.Rprofile.d                           # rprofile directory
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/R/uppmax_Rprofile.R {{_HOMEremote}}/.Rprofile                      # rprofile
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/pier/pier.toml {{_HOMEremote}}/.pier.toml                          # pier
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/tmux/2.5.tmux.conf {{_HOMEremote}}/.tmux.conf                      # tmux 2.5
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/screen/4.01.00.screenrc {{_HOMEremote}}/.screenrc                  # screen

  # @config
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/micro {{_HOMEremote}}/.config                                      # micro directory
  ssh {{_uppmaxID}} ln -svf {{_ianusRemote}}/starship {{_HOMEremote}}/.config                                   # starship directory

  # shell
  ssh {{_uppmaxID}} ln -svf {{_terminalRemote}}/uppmax_profile.sh {{_HOMEremote}}/.profile                      # terminal profile

  # bash
  ssh {{_uppmaxID}} if [[ ! -d {{_HOMEremote}}/.bash ]]; then ssh {{_uppmaxID}} mkdir {{_HOMEremote}}/.bash; fi # purge before linking
  ssh {{_uppmaxID}} ln -svf _{{_bashRemote}}/uppmax_bashrc.sh {{_HOMEremote}}/.bashrc                           # bashrc
  ssh {{_uppmaxID}} ln -svf _{{_bashRemote}}/uppmax_bash_profile.sh {{_HOMEremote}}/.bash_profile               # bash profile
  ssh {{_uppmaxID}} ln -svf _{{_bashRemote}}/uppmax_bash_aliases.sh {{_HOMEremote}}/.bash/bash_aliases.sh       # bash aliases
  ssh {{_uppmaxID}} ln -svf _{{_bashRemote}}/fzf.bash {{_HOMEremote}}/.bash                                     # fzf bash

  # zsh
  ssh {{_uppmaxID}} "if [[ ! -d {{_HOMEremote}}/.zsh ]]; then ssh {{_uppmaxID}} mkdir {{_HOMEremote}}/.zsh; fi" # purge before linking
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/uppmax_zshrc.sh {{_HOMEremote}}/.zshrc                               # zshrc
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/uppmax_zsh_aliases.sh {{_HOMEremote}}/.zsh/zsh_aliases.sh            # zsh aliases
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/fzf.zsh {{_HOMEremote}}/.zsh                                         # fzf zsh
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/uppmax_zsh_plugins.sh {{_HOMEremote}}/.zsh/zsh_plugins.sh            # zsh plugins
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/uppmax_zsh_plugins.txt {{_HOMEremote}}/.zsh/zsh_plugins.txt          # zsh plugins
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/zsh_pandoc_autocompletion.sh {{_HOMEremote}}/.zsh                    # zsh completion
  ssh {{_uppmaxID}} ln -svf {{_zshRemote}}/completion {{_HOMEremote}}/.config/zsh_completion                    # zsh completion

  # fish
  ssh {{_uppmaxID}} ln -svf {{_fishRemote}}/uppmax_config.fish {{_HOMEremote}}/.config/fish/config.fish         # fish config

################################################################################

# link archives Pawsey
@ HephaestusPawsey:
  # @HOME
  ssh {{_pawseyID}} ln -svf {{_ianusRemote}}/R/Rprofile.d {{_HOMEremote}}/.Rprofile.d                            # rprofile directory
  ssh {{_pawseyID}} ln -svf {{_ianusRemote}}/R/pawsey_Rprofile.R {{_HOMEremote}}/.Rprofile                       # rprofile
  ssh {{_pawseyID}} ln -svf {{_ianusRemote}}/screen/4.01.00.screenrc {{_HOMEremote}}/.screenrc                   # screen

  # @config
  ssh {{_pawseyID}} ln -svf {{_ianusRemote}}/micro {{_HOMEremote}}/.config                                       # micro directory
  ssh {{_pawseyID}} ln -svf {{_ianusRemote}}/starship {{_HOMEremote}}/.config                                    # starship directory

  # shell
  ssh {{_pawseyID}} ln -svf {{_terminalRemote}}/pawsey_profile.sh {{_HOMEremote}}/.profile                       # terminal profile

  # bash
  ssh {{_pawseyID}} "if [[ ! -d {{_HOMEremote}}/.bash ]]; then ssh {{_pawseyID}} mkdir {{_HOMEremote}}/.bash; fi" # purge before linking
  ssh {{_pawseyID}} ln -svf _{{_bashRemote}}/pawsey_bashrc.sh {{_HOMEremote}}/.bashrc                             # bashrc
  ssh {{_pawseyID}} ln -svf _{{_bashRemote}}/pawsey_bash_profile.sh {{_HOMEremote}}/.bash_profile                 # bash profile
  ssh {{_pawseyID}} ln -svf _{{_bashRemote}}/pawsey_bash_aliases.sh {{_HOMEremote}}/.bash/bash_aliases.sh         # bash aliases
  ssh {{_pawseyID}} ln -svf _{{_bashRemote}}/fzf.bash {{_HOMEremote}}/.bash                                       # fzf bash

  # zsh
  ssh {{_pawseyID}} "if [[ ! -d {{_HOMEremote}}/.zsh ]]; then ssh {{_pawseyID}} mkdir {{_HOMEremote}}/.zsh; fi"   # purge before linking
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/pawsey_zshrc.sh {{_HOMEremote}}/.zshrc                                # zshrc
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/pawsey_zsh_aliases.sh {{_HOMEremote}}/.zsh/zsh_aliases.sh             # zsh aliases
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/fzf.zsh {{_HOMEremote}}/.zsh                                          # fzf zsh
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/pawsey_zsh_plugins.sh {{_HOMEremote}}/.zsh/zsh_plugins.sh             # zsh plugins
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/pawsey_zsh_plugins.txt {{_HOMEremote}}/.zsh/zsh_plugins.txt           # zsh plugins
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/zsh_pandoc_autocompletion.sh {{_HOMEremote}}/.zsh                     # zsh completion
  ssh {{_pawseyID}} ln -svf {{_zshRemote}}/completion {{_HOMEremote}}/.config/zsh_completion                     # zsh completion

  # link executables
  ssh {{_pawseyID}} "if [[ ! -d {{_HOMEremote}}/bin ]]; then ssh {{_pawseyID}} rm -rf {{_HOMEremote}}/bin; fi"    # purge before linking
  ssh {{_pawseyID}} ln -svf {{_softwarePawsey}}/bin {{_HOMEremote}}/bin

################################################################################
# Zaqar
################################################################################

# download cluster executables
@ ZaqarBin:
  # create directories
  if [[ ! -d {{_remoteBin}} ]]; then mkdir -p {{_remoteBin}}; fi
  if [[ ! -d {{_remoteBin}}/bin ]]; then mkdir -p {{_remoteBin}}/bin; fi
  if [[ ! -d {{_remoteBin}}/download ]]; then mkdir -p {{_remoteBin}}/download; fi

  # bat
  wget https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl/bat {{_remoteBin}}/bin/
  mv {{_remoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/bat-v0.18.3-x86_64-unknown-linux-musl

  # diamond
  wget https://github.com/bbuchfink/diamond/releases/download/v2.0.12/diamond-linux64.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/diamond-linux64.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/diamond {{_remoteBin}}/bin/
  mv {{_remoteBin}}/diamond-linux64.tar.gz {{_remoteBin}}/download/

  # exa
  wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip --directory-prefix {{_remoteBin}}/
  unzip -o {{_remoteBin}}/exa-linux-x86_64-musl-v0.10.1.zip -d {{_remoteBin}}/
  mv {{_remoteBin}}/exa-linux-x86_64-musl-v0.10.1.zip {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/completions
  rm -rf {{_remoteBin}}/man

  # fd
  wget https://github.com/sharkdp/fd/releases/download/v8.2.1/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl/fd {{_remoteBin}}/bin/
  mv {{_remoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/fd-v8.2.1-x86_64-unknown-linux-musl

  # lsd
  wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl/lsd {{_remoteBin}}/bin/
  mv {{_remoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/lsd-0.20.1-x86_64-unknown-linux-musl

  # micro
  wget https://github.com/zyedidia/micro/releases/download/v2.0.10/micro-2.0.10-linux-arm64.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/micro-2.0.10-linux-arm64.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/micro-2.0.10/micro {{_remoteBin}}/bin/
  mv {{_remoteBin}}/micro-2.0.10-linux-arm64.tar.gz {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/micro-2.0.10

  # ripgrep
  wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl/rg {{_remoteBin}}/bin/
  mv {{_remoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/ripgrep-13.0.0-x86_64-unknown-linux-musl

  # starship
  wget https://github.com/starship/starship/releases/download/v0.58.0/starship-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/starship-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/starship {{_remoteBin}}/bin/
  mv {{_remoteBin}}/starship-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/

  # xcp
  # wget https://github.com/tarka/xcp/archive/refs/tags/v0.9.0.tar.gz --directory-prefix {{_remoteBin}}/

  # xsv
  wget https://github.com/BurntSushi/xsv/releases/download/0.13.0/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/xsv {{_remoteBin}}/bin/
  mv {{_remoteBin}}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/

  # zoxide
  wget https://github.com/ajeetdsouza/zoxide/releases/download/v0.7.6/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz --directory-prefix {{_remoteBin}}/
  tar -xvf {{_remoteBin}}/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz --directory {{_remoteBin}}/
  mv {{_remoteBin}}/zoxide-x86_64-unknown-linux-musl/zoxide {{_remoteBin}}/bin/
  mv {{_remoteBin}}/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz {{_remoteBin}}/download/
  rm -rf {{_remoteBin}}/zoxide-x86_64-unknown-linux-musl

################################################################################
