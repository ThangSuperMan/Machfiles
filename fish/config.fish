# Basic config
set fish_greeting""

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

fish_add_path /opt/homebrew/bin/

# function fish_user_key_bindings
#   bind \c] peco_select_ghq      # Ctrl-]
#   bind \cr peco_select_history  # Ctrl-r
#   bind \cj peco_select_z        # Ctrl-j
#   bind \cf peco_change_directory     # Ctrl-f
# end

# Setting the color for EXA 
export EXA_COLORS="sn=37"
export LS_COLORS=".js=36"

# Setup for go
alias gr='go run'
alias g='go'

alias e='exit'
alias cls='clear'
alias v='nvim'

# ide
alias ide "tmux split-window -v -p 30 && tmux split-window -h -p 66 && tmux split-window -h -p 50"
alias ide-h "tmux split-window -h -p 30 && tmux split-window -v -p 30"

# alias ide "tmux split-window -h -p 30 {pane_current_path}"

# bind-key \\ split-window -h -c "#{pane_current_path}"
# bind-key - split-window -v -c "#{pane_current_path}"

# git
alias g "git"

# Tmux
alias tks 'tmux kill-server'
alias  tmux-reload 'tmux source ~/.tmux.conf'

# React native fix erroe router
alias config='export NODE_OPTIONS=--openssl-legacy-provider' 
