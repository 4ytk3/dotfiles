# Respect XDG base dir
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_STATE_HOME="$HOME/.local/state/"
export XDG_CACHE_HOME="$HOME/.cache/"

# Zsh configuration directory
ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Zsh history file location
export HISTFILE="$XDG_STATE_HOME/zsh/history"
(( HISTSIZE = (2 ** 31) - 1 ))   # Number of history can be saved in memory
(( SAVEHIST = (2 ** 31) - 1 ))   # Number of history can be saved in HISTFILE
setopt INC_APPEND_HISTORY        # Write to the history file immediastely, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.

# Set Wget configuration file location
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# Disable less history
export LESSHISTFILE=-

# Terminal settings
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Set .NET CLI home
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# ASDF settings
export ASDF_DIR="$XDG_DATA_HOME/asdf"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=".tool_versions"

# Set PATH
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Set the preferred editor
export EDITOR='vim'
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# Set language environment
export LANG="en_US.UTF-8"

# Set abbreviations file location
export ABBR_USER_ABBREVIATIONS_FILE="$HOME/.config/zsh/.abbreviations"

# Python
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}python/pythonstartup.py"
export FLET_HOME="$XDG_DATA_HOME/flet"

# QT
export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/x86_64-linux-gnu/qt5/plugins
