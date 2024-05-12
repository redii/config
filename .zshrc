# activate pure prompt
autoload -U promptinit; promptinit
prompt pure

# define aliases
alias ls="ls -lG"
alias ll="ls -lG"
alias la="ls -laG"

# activate cmd+delete for iterm2
#bindkey "^X\\x7f" backward-kill-line
#bindkey "^[[F" end-of-line
#bindkey "^[[H" beginning-of-line

# activate nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add bun to PATH
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
