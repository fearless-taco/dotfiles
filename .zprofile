eval "$(/opt/homebrew/bin/brew shellenv)"

# Some terminal profiles start zsh as a login shell without reading .zshrc.
# Load interactive shell config here as a fallback.
if [[ -o interactive && -z "${_ZSHRC_LOADED:-}" ]]; then
  source "$HOME/.zshrc"
fi
