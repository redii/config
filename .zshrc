# define aliases
alias ls="ls -lG"
alias la="ls -laG"
alias docker="podman"

# SSH settings
export SSH_AUTH_SOCK=~/.bitwarden-ssh-agent.sock
alias qwe="ssh henry@garados.de"
alias myo="ssh root@app.makeyouroffice.de"

# setup PATH variable
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/homebrew/opt/grep/libexec/gnubin" # add grep to PATH

# setup podman/docker compatibility
export DOCKER_HOST="unix://$(podman machine inspect --format '{{.ConnectionInfo.PodmanSocket.Path}}')"

# activate nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# activate pure prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# activate Homebrew autoupdate once a day
export HOMEBREW_AUTO_UPDATE_SECS=86400

# activate aws cli autoprompt
export AWS_CLI_AUTO_PROMPT="on-partial"
