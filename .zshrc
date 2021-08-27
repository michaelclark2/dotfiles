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
export LSCOLORS=Exfxcxdxbxegedabagacad

export PATH=/usr/local/bin:${PATH}

# Pyenv config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
