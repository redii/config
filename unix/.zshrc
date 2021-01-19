# prevent error on shell launch
unsetopt PROMPT_SP
autoload -Uz compinit
compinit

# define aliases
alias ll="ls -l"

# activate starship for zsh
eval "$(starship init zsh)"
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit
