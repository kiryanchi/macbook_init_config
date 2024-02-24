alias sudo="sudo "
alias vim="nvim"
alias ls="eza"
alias ll="eza -al"
alias g++="g++ -std=c++17"
alias cat="bat"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# POETRY COMPLETION
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# git branch
autoload -Uz vcs_info
precmd() {vcs_info}
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST
PROMPT='%F{blue}%~%k%f %F{green}${vcs_info_msg_0_}%f $ '

# MY SQL
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

# rbenv
export PATH=${HOME}/.rbenv/bin:${PATH} && eval "$(rbenv init -)"
