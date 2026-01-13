# -----------------
# load functions

CUSTOM_FPATH="$HOME/.zsh_functions"
export FPATH="$CUSTOM_FPATH:$FPATH"
ls -1 "$CUSTOM_FPATH" | while read name; do
	autoload -Uz "$name"
done

# -----------------
# aliases

ALIASES_PATH="$HOME/.zsh_aliases"
find "$ALIASES_PATH" -follow -type f -name '*.zsh' | while read file_path; do
	. "$file_path"
done

# -----------------
# other settings

bindkey -e
