export _ZSHRC_LOADED=1

# ---- MOTD (print once) ----
if [[ -z "$_MOTD_SHOWN" && -t 1 ]]; then
  export _MOTD_SHOWN=1
  cat "$HOME/.motd"
fi

# ---- ASDF  ----
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Java from asdf: sets JAVA_HOME and updates it on directory change
[[ -f "${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/java/set-java-home.zsh" ]] && \
  . "${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/java/set-java-home.zsh"

# --- Android --- 
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

# ---- Oh My Zsh ----
export ZSH="$HOME/.oh-my-zsh"

# Configuration (must be set before sourcing oh-my-zsh.sh)
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

plugins=(git)

source "$ZSH/oh-my-zsh.sh"
export PATH="$HOME/.local/bin:$PATH"
