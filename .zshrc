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


# fix home and end

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# ctrl s for sudo
function insert_sudo() { zle beginning-of-line; zle -U "sudo "}
zle -N insert-sudo insert_sudo
bindkey "^[d" insert-sudo

# aliases for configs
alias confzsh="vi ~/.zshrc"
alias confvim="vi ~/.vimrc"
alias confawesome="vi ~/.config/awesome/rc.lua"

# Prompt stuff
# git prompt for zsh
source ~/git/zsh-git-prompt/zshrc.sh
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""


# The acctual prompt
PROMPT='$(git_super_status)
%F{blue}%n%f%F{white}@%f%F{cyan}%m%f%F{yellow} %~> %f'
# RPROMPT='$(git_super_status)'

# dissable beep
setopt NO_BEEP
