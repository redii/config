# Created by newuser for 5.8

unsetopt PROMPT_SP
autoload -Uz compinit
compinit

alias ll="ls -l"

eval "$(starship init zsh)"
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit
