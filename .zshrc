# Load version control information
autoload -Uz vcs_info
autoload -U colors && colors
autoload -Uz compinit && compinit
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
# zstyle ':vcs_info:git:*' formats '(%b)'
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg[blue]%}%~ %{$fg[green]%}${vcs_info_msg_0_} %{$reset_color%}  '

alias p='cd ~/Projects'
alias reload='source ~/.zshrc'
alias hist='history | fzf'
alias v='nvim'
alias top='htop'
alias cls='clear'
alias g='git'
alias gr='go run'
alias e='exit'
alias ide='tmux split-window -v -p 28 && tmux split-window -h -p 68 && tmux split-window -h -p 50'
alias gs='git status'
alias tks='tmux kill-server'

HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:bg:fg:history:gst:hist'
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'

# Allow tmux adapte the color for kitty temrinal
# export TERM="xterm-256color"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(starship init zsh)"
