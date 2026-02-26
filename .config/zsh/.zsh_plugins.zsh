fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions/src" )
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-ez-compinit" )
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-ez-compinit/ez-compinit.plugin.zsh"
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-asdf-vm-SLASH-asdf/asdf.sh"
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-olets-SLASH-zsh-abbr" )
source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-olets-SLASH-zsh-abbr/zsh-abbr.plugin.zsh"
if ! (( $+functions[zsh-defer] )); then
  fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer" )
  source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer/zsh-defer.plugin.zsh"
fi
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions" )
zsh-defer source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fpath+=( "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-syntax-highlighting" )
zsh-defer source "$HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
