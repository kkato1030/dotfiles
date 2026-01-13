# -----------------
# vars

export DOTFILES_PATH=$HOME/.dotfiles
export AL_HOME=$DOTFILES_PATH/al
export WORKSPACE=$HOME/Workspace
export EDITOR=vim

# -----------------
# cli-tools setup

HOMEBREW_BIN=/opt/homebrew/bin

# al/brew
eval "$($HOMEBREW_BIN/brew shellenv)"
eval "$($HOMEBREW_BIN/al hook zsh)"

# mise
eval "$($HOMEBREW_BIN/mise activate zsh)"

# -----------------
# completions
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C aws_completer aws

# -----------------
# load zshrc
test -r ~/.zshrc && . ~/.zshrc
