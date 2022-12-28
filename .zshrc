# Measure ZSH performance
zmodload zsh/zprof

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias vi='nvim'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias ls='ls -la'
alias ll='exa --icons -a --long'
alias ls='exa --icons -a --long'

# Custom Alias
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias ga='git add'
alias gco='git checkout'

# Kubernetes Aliases & Handy Functions

# Switch current context 
alias knc='kubectl config use-context '
# Get current context
alias kncc='kubectl config current-context'

alias kcn='kubectl config set-context $(kubectl config current-context) --namespace'

# xclip
alias xc='xclip -selection "clipboard" -i '

# Make cat -> bat
alias cat='bat'

# tmux pre-configured sessions
alias swb-pro-ide='tmuxp load -y $HOME/projects/swb-pro-session.yaml'
alias dot-files-ide='tmuxp load -y $HOME/projects/dot-files.yaml'
alias ide='tmuxp load -y $HOME/projects/ide.yaml'

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/cian/.local/share/gem/ruby/3.0.0/bin
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1
export EDITOR=/home/linuxbrew/.linuxbrew/bin/nvim
export KUBECONFIG="/home/cian/.kube/home.yaml"
export PICO_SDK_PATH="/home/cian/code/pico-sdk"
export JAVA_HOME="/home/linuxbrew/.linuxbrew/opt/openjdk@11/"

# cappuccin them for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

eval "$(mcfly init zsh)"

neofetch

[ -f ~/.fzf.bash ] && source ~/.fzf.bash && source /usr/share/bash-completion/bash_completion

# Ensure this is kept at the very bottom of file to get accurate performance of zsh
# zprof
export PATH="/home/linuxbrew/.linuxbrew/opt/scala@2.12/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/scala@2.11/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/openjdk@11/bin:$PATH"
