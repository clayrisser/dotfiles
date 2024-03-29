#!/usr/bin/zsh

TERM=xterm-256color

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
    autojump
    aws
    debian
    direnv
    emoji
    encode64
    git
    golang
    helm
    kubectl
    kubectx
    minikube
    mvn
    node
    nvm
    ruby
    rust
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=true

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_envs
(cat .path.list 2>/dev/null || true) | \
    sed 's|\s*#\s*.*||g' | \
    sed '/^[[:space:]]*$/d' | \
    sed 's|\(.*\)|export PATH="\1:$PATH"|g' > \
    $HOME/.path.sh
source $HOME/.path.sh
source $HOME/.zsh_sources
source $HOME/.zsh_aliases
source $HOME/.zsh_functions
source $HOME/.zsh_secrets 2>/dev/null || true

autoload -U compinit && compinit

# fortune | cowsay | lolcat
echo moo | cowsay | lolcat
