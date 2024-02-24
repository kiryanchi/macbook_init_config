alias sudo="sudo "
alias vim="nvim"
alias ls="eza"
alias ll="eza -al"
alias g++="g++ -std=c++17"
alias cat="bat"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fuck
eval $(thefuck --alias)

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Poetry Cmpletion
fpath+=~/.zfunc
autoload -Uz compinit && compinit
