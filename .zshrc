TERM=xterm-256color

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
# vi-mode
  encode64
  emoji
  ubuntu
)

SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  host
  git
  hg
  package
  node
  ruby
  elixir
  xcode
  swift
  golang
  php
  rust
  haskell
  julia
  docker
  aws
  venv
  conda
  pyenv
  dotnet
  ember
  kubecontext
  exec_time
  line_sep
# battery
  vi_mode
  jobs
  exit_code
  char
)

export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_envs
source $HOME/.zsh_aliases
source $HOME/.rvm/scripts/rvm 2>/dev/null || true
source $HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null || true
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null || true

eval "$(fasd --init auto 2>/dev/null || true)"

nvm use 8 &>/dev/null || true
fortune | cowsay | lolcat
echo && ls

