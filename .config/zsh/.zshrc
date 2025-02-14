# Homebrew
if [[ "$(uname -s)" == Linux* ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ "$(uname)" == "Darwin" ]]; then
  eval "(/usr/local/bin/brew shellenv)"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Powerlevel10k configuration
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

# Load Powerlevel10k theme
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# Disable instant prompt for compatibility reasons
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Plugin management
eval "$(sheldon source)"

# Starship
eval "$(starship init zsh)"

# asdf
export PATH="/home/nakasone/.asdf/installs/poetry/1.8.3/bin:$PATH"

# Zsh completion setup
autoload -U compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# fzf configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# alias
alias vim='vim -u $XDG_CONFIG_HOME/vim/vimrc'

# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

. ${XDG_DATA_HOME}/asdf/asdf.sh
