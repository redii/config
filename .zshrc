# define aliases
alias ls="ls -lG"
alias ll="ls -lG"
alias la="ls -laG"
alias d="docker"
alias dc="docker compose"

# setup PATH variable
export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH" # https://stackoverflow.com/questions/33231370/installed-gnu-grep-on-osx-but-cant-use
export PATH=$PATH:/opt/homebrew/bin

# activate nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# activate pure prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure