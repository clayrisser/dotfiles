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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$PATH:$HOME/.rvm/bin"

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
source ~/.zsh_envs
source ~/.zsh_aliases

fortune | cowsay | lolcat
echo && ls

