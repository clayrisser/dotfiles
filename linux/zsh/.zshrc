TERM=xterm-256color

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(
  emoji
  encode64
  git
  helm
  ubuntu
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=true

export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $HOME/.cargo/env
source $ZSH/oh-my-zsh.sh
source $HOME/.rvm/scripts/rvm 2>/dev/null || true
# source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null || true
# source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null || true
source $HOME/.zsh_aliases
source $HOME/.zsh_envs
source $HOME/.zsh_functions
source $HOME/.zsh_sources
source $HOME/.zsh_secrets
source $ZSH/oh-my-zsh.sh
source /opt/emsdk/emsdk_env.sh &>/dev/null || true

eval "$(fasd --init auto 2>/dev/null || true)"

nvm use 12 &>/dev/null || true
# fortune | cowsay | lolcat
echo moo | cowsay | lolcat
echo && ls ~/Desktop

export PATH="$PATH:$HOME/.pyenv/bin"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init --path)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
source <(minikube completion zsh)
source <(kubectl completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

DOTSTOW_AC_ZSH_SETUP_PATH=$HOME/.cache/dotstow/autocomplete/zsh_setup && test -f $DOTSTOW_AC_ZSH_SETUP_PATH && source $DOTSTOW_AC_ZSH_SETUP_PATH;

eval "$(direnv hook zsh)"
