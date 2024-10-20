#!/bin/bash
####################################################################################################

# go version manager
curl -sSL https://git.io/g-install | sh -s

####################################################################################################

# language server
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/nametake/golangci-lint-langserver@latest

# binaries
go install github.com/zyedidia/eget@latest
go install github.com/jesseduffield/lazygit@latest
go install github.com/jesseduffield/lazydocker@latest
go install github.com/jesseduffield/lazynpm@latest
go install github.com/itchyny/mmv/cmd/mmv@latest
go install github.com/itchyny/fillin@latest
go install github.com/spf13/cobra-cli@latest

####################################################################################################

# # static binaries
# eget zyedidia/micro

####################################################################################################
