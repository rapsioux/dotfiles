# COLOURS
#==================#
autoload -U colors && colors

export LSCOLORS=GxFxCxDxBxegedabagaced
export LS_COLORS="di=1;36;40:ln=1;35;40:so=1;32;40:pi=1;33;40:ex=1;31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=34;43:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
alias ls='ls -G'
alias ll='ls -Gl'

alias glog='git log --decorate --graph --oneline --date-order'
alias gitpp='git status | fpp '
alias gits='git status '
alias gitd='git diff '


export PROMPT="%m op %~%# "

#Colors on man
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;74m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[38;5;246m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;146m' \
        man "$@"
}

#==================#

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@4/bin:$PATH"
alias npm-exec='PATH=$(npm bin):$PATH'

export EDITOR="/usr/bin/vim"

export JAVA_HOME=$(/usr/libexec/java_home)


eval $(thefuck --alias)

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/Users/luis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt notify
bindkey -v
# End of lines configured by zsh-newuser-install

source ~/.zshrc_secrets
