#!/bin/bash
set -eu

# Workspace
mkdir -p ~/Workspace
mkdir -p ~/Workspace/doodle

# link
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.zprofile ~/.zprofile
ln -sf ~/.dotfiles/.zsh_aliases ~/.zsh_aliases
ln -sf ~/.dotfiles/.zsh_functions ~/.zsh_functions

# Homebrew のインストール: https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# al のインストール: https://github.com/kkato1030/al
brew tap kkato1030/tap
brew install kkato1030/tap/al
