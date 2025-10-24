# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config//zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Core shell options
setopt INC_APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_DUPS

# Ensure cache/state dirs exist (harmless if already present)
mkdir -p "$XDG_CACHE_HOME/zsh" "$XDG_STATE_HOME/zsh" >/dev/null 2>&1

# Completion setup (cache under XDG)
autoload -U compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# OS detection helpers
is_macos() { [[ "$OSTYPE" == darwin* ]]; }
is_wsl()   { grep -qi microsoft /proc/version 2>/dev/null; }

# Load OS-specific overlay
if is_macos && [[ -r "$ZDOTDIR/os/darwin.zsh" ]]; then
  source "$ZDOTDIR/os/darwin.zsh"
elif is_wsl && [[ -r "$ZDOTDIR/os/wsl.zsh" ]]; then
  source "$ZDOTDIR/os/wsl.zsh"
fi

# Activate asdf if installed (no Homebrew dependency)
if [ -d "$ASDF_DATA_DIR" ]; then
#   [ -f "$ASDF_DATA_DIR/asdf.sh" ] && . "$ASDF_DATA_DIR/asdf.sh"
#   [ -f "$ASDF_DATA_DIR/completions/asdf.zsh" ] && . "$ASDF_DATA_DIR/completions/asdf.zsh"
fi

# Powerlevel10k (optional)
if [[ -r "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ -r "$ZDOTDIR/.p10k.zsh" ]] && source "$ZDOTDIR/.p10k.zsh"
[[ -r "$XDG_DATA_HOME/powerlevel10k/powerlevel10k.zsh-theme" ]] && \
  source "$XDG_DATA_HOME/powerlevel10k/powerlevel10k.zsh-theme"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Plugin managers (load only if available)
command -v sheldon >/dev/null 2>&1 && eval "$(sheldon source)"
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"

# fzf integration (optional)
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

# Aliases and small helpers
alias vim='vim -u $XDG_CONFIG_HOME/vim/vimrc'
fda() { local d; d=$(find "${1:-.}" -type d 2>/dev/null | fzf +m) && cd "$d"; }
