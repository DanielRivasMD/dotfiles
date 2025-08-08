# dotfiles

## Overview
Welcome to this Library, please proceed to the desired Archive...

Archive automates the setup of a rich, multi-language development environment using modular install scripts, external manifests, Zellij plugin management, and parallel execution
It is designed to be clean, reproducible, and easy to maintain

## Directory Structure

.
├── install.sh              # Main script to run all setup steps
├── LICENSE                 # Licensing terms
├── README.md               # Project documentation
├── ROADMAP.txt             # Future plans
├── .gitignore              # Git exclusions
├── .justfile               # Declarative task runner
│
├── .just/                  # Justfile auxiliary scripts
├── completions/            # Shell completion definitions
├── deprecated/             # Archived configs or plugins
├── ex-situ/                # External configs
├── in-situ/                # Internal configs
├── in-silico/              # Installation instructions

## Setup Instructions

1. Clone this repository into your workspace:

```bash
git clone https://github.com/DanielRivasMD/dotfiles
cd dotfiles
```

2. Launch the installer:

```bash
bash install.sh
```

3. All scripts and cloning tasks will run in parallel. Logs are stored in:
```bash
~/.archive/log/
```

## Features

- Parallel execution of install scripts and repo cloning
- External manifest files for Zellij plugins and Git repos
- Shell install scripts for languages and tools
- Timestamped logging for every task
- Declarative Justfile support
- Config files separated by tool, state, and scope
- Organized file structure for separation of concerns

## Customization

- Add a new install script in `in-silico` and register it in `install.sh` like:

```bash
run_install "${installDir}/python.sh"
```

- Add Git repos in `in-silico/clone_repos.txt`:

```text
https://github.com/example/tool         ~/.completion/tool
```

- Add plugins in `in-silico/zellij_plugins.txt`:

```text
https://github.com/example/plugin/releases/latest/download/plugin.wasm
```

## License

This project is licensed under the terms provided in LICENSE.

## Credits

Crafted by Daniel — built for clarity, modularity, and speed.

