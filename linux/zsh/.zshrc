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

source $HOME/.zsh_aliases
source $HOME/.zsh_envs
source $HOME/.zsh_functions
source $HOME/.zsh_sources
source $HOME/.zsh_secrets
source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# fortune | cowsay | lolcat
echo moo | cowsay | lolcat
