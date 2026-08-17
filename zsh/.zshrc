if [[ -r $ZDOTDIR/.aliases  ]]; then
  . $ZDOTDIR/.aliases
fi

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

mkdir -p "${ASDF_DATA_DIR:-$HOME/.asdf}/completions"
asdf completion zsh > "${ASDF_DATA_DIR:-$HOME/.asdf}/completions/_asdf"

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

fpath+=("$(npm root -g)/pure-prompt")
autoload -U promptinit; promptinit
prompt pure

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
