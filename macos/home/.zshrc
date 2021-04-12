# prevent error on shell launch
unsetopt PROMPT_SP
autoload -Uz compinit
compinit

# define aliases
alias ll="ls -lG"
alias la="ls -laG"

# enable pure prompt
autoload -U promptinit; promptinit
# change the color for `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:success' color cyan
zstyle ':prompt:pure:prompt:error' color red
# turn on git stash status
zstyle :prompt:pure:git:stash show yes
prompt pure
