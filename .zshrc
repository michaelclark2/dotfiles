source ~/.aliases

if [ -e "$HOME/.workenv" ]; then
    source ~/.workenv
fi

# longer history
export HISTSIZE=1000000
export SAVEHIST=1000000

autoload -Uz compinit && compinit

# case insensitive tab completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

export CLICOLOR=1

export PATH=/usr/local/bin:${PATH}

# Pyenv config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# nvm config
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
