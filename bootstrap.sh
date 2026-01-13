#!/bin/bash
set -eu

# Workspace ディレクトリをセットアップ
mkdir -p ~/Workspace/{doodle,github.com}
mkdir -p ~/.config/{ghostty,al}

# Link 設定
ln -sf "$DOTFILES_PATH"/zsh/.zshrc ~/.zshrc
ln -sf "$DOTFILES_PATH"/zsh/.zprofile ~/.zprofile
ln -sf "$DOTFILES_PATH"/zsh/.zsh_aliases ~/.zsh_aliases
ln -sf "$DOTFILES_PATH"/zsh/.zsh_functions ~/.zsh_functions
ln -sf "$DOTFILES_PATH"/vim ~/.vim

# Homebrew のインストール: https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# al のインストール: https://github.com/kkato1030/al
brew tap kkato1030/tap
brew install kkato1030/tap/al

# Application のインストール (core のみ)
al sync --core
