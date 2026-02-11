# ---- MOTD (print once) ----
if [[ -z "$_MOTD_SHOWN" && -t 1 ]]; then
  export _MOTD_SHOWN=1
  cat "$HOME/.motd"
fi

# ---- ASDF  ----
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Java from asdf (after asdf is loaded)
export JAVA_HOME="$(asdf where java 2>/dev/null)"
if [[ -n "$JAVA_HOME" ]]; then
  export PATH="$JAVA_HOME/bin:$PATH"
fi

# ---- Oh My Zsh ----
export ZSH="$HOME/.oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"


# ---- Configuration ----
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

plugins=(git)
