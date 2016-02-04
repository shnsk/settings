autoload -U compinit
compinit

setopt auto_pushd

PS1=%m:%~%%

alias v='ls -lF'

export EDITOR=vi

setopt pushd_ignore_dups
setopt auto_pushd
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt share_history
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

# history
function history-all { history -E 1}
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

# search history
beginning-search

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
