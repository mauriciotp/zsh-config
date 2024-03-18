### ---- ZSH HOME -----------------------------------
export ZSH=$HOME/.zsh
export STARSHIP_CONFIG=~/.config/starship/.starship.toml

### ---- autocompletions -----------------------------------
fpath=(~/.zsh/site-functions $fpath)
autoload -Uz compinit && compinit

### ---- Completion options and styling -----------------------------------
zstyle ':completion:*' menu select # selectable menu

### ---- Source other configs -----------------------------------
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### ---- Created by Zap installer --------------------------------
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "agkozak/zsh-z"
plug "zsh-users/zsh-syntax-highlighting"

### ---- Load Starship -----------------------------------
eval "$(starship init zsh)"

### ---- Load nvm ----------------------------------------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
