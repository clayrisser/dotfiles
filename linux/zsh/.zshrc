#!/usr/bin/zsh

TERM=xterm-256color

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    autojump
    debian
    direnv
    emoji
    encode64
    git
    golang
    helm
    node
    nvm
    zsh-autocomplete
    zsh-completions
    zsh-syntax-highlighting
)

SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=true

source $HOME/.zsh_envs
(cat .path.list 2>/dev/null || true) | \
    sed 's|\s*#\s*.*||g' | \
    sed '/^[[:space:]]*$/d' | \
    sed 's|\(.*\)|export PATH="\1:$PATH"|g' > \
    $HOME/.path.sh
source $HOME/.path.sh
source $HOME/.zsh_aliases
source $HOME/.zsh_functions
source $HOME/.zsh_secrets 2>/dev/null || true
source $HOME/.zsh_sources
source $ZSH/oh-my-zsh.sh

# fortune | cowsay | lolcat
echo moo | cowsay | lolcat
