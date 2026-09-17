export ZDOTDIR="$HOME/.config/zsh"

export SCRIPTS="$HOME/scripts"
export PATH="$SCRIPTS:$PATH"

# secrets
export SECRETS_DIR="$HOME/.secrets"
[[ -f $SECRETS_DIR/.secrets ]] && source "$SECRETS_DIR/.secrets"
