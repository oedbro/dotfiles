# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/edbro/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2048
SAVEHIST=2048
bindkey -v
# End of lines configured by zsh-newuser-install

# Home made config

export EDITOR="vim"


# alt s for sudo
insert-sudo() {zle begining-of-line; zle -U "sudo "}
zle -N insert-sudo
bindkey "^[d" insert-sudo




