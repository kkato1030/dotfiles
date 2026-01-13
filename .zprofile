# -----------------
# vars

export WORKSPACE=$HOME/Workspace
export EDITOR=vim

# -----------------
# cli-tools setup

# al/brew
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/Users/kakato/Workspace/github.com/kkato1030/al/al hook zsh)"

# mise
eval "$(/opt/homebrew/bin/mise activate zsh)"

# -----------------
# completions
autoload -Uz compinit && compinit

# -----------------
# load zshrc
test -r ~/.zshrc && . ~/.zshrc
