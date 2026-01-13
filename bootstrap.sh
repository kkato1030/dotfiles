#!/bin/bash
set -eu

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# Workspace ディレクトリをセットアップ
mkdir -p ~/Workspace/{doodle,github.com}
mkdir -p ~/.config/{al,ghostty}

# Link 設定
ln -sf "$SCRIPT_DIR"/zsh/.zshrc ~/.zshrc
ln -sf "$SCRIPT_DIR"/zsh/.zprofile ~/.zprofile
ln -sf "$SCRIPT_DIR"/zsh/.zsh_aliases ~/.zsh_aliases
ln -sf "$SCRIPT_DIR"/zsh/.zsh_functions ~/.zsh_functions
ln -sf "$SCRIPT_DIR"/vim ~/.vim
ln -sf "$SCRIPT_DIR"/ghostty ~/.config/ghostty

# Vim のセットアップ
vim -Nu ~/.vim/vimrc -n -es +'qa'

# Homebrew のインストール: https://brew.sh/
if ! brew --version >/dev/null 2>&1; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# al のインストール: https://github.com/kkato1030/al
if ! al --version >/dev/null 2>&1; then
	brew tap kkato1030/tap
	brew install kkato1030/tap/al
fi

# Application のインストール (core のみ)
AL_HOME="$SCRIPT_DIR/al" al sync --core
