# XDG base directories
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"

# Place zsh configs under XDG
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Shell history configuration
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=50000
export SAVEHIST=50000

# Lightweight defaults (safe for non-interactive shells)
export EDITOR="vim"
export LANG="en_US.UTF-8"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export LESSHISTFILE=-

# Prepend user-local bin if present
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

# Locate asdf only (actual sourcing happens in .zshrc)
if [ -z "${ASDF_DATA_DIR:-}" ]; then
  if [ -d "$XDG_DATA_HOME/asdf" ]; then
    export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
  elif [ -d "$HOME/.asdf" ]; then
    export ASDF_DATA_DIR="$HOME/.asdf"
  else
    export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
  fi
fi
export ASDF_DIR="$ASDF_DATA_DIR"
[ -d "$ASDF_DIR/shims" ] && PATH="$ASDF_DIR/shims:$PATH"

# Python/Flet environment
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/pythonstartup.py"
export FLET_HOME="$XDG_DATA_HOME/flet"

. "$HOME/.cargo/env"
