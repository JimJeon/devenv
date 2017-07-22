# AUTHOR
#===============================================================
# Personal $HOME/.bashrc file
# written by Jim Jeon
#
# Email: jimjeon.me@gmail.com
# Git: https://github.com/JimJeon
#
# REFERENCE
#===============================================================
# http://tldp.org/LDP/abs/html/sample-bashrc.html
#
#===============================================================


# BASIC
#---------------------------------------------------------------
# If not running interactively, don't do anything
### same with [[ $- != *i* ]] && return
### same with [ -z "$PS1" ] && return
case $- in
    *i*) ;;
      *) return;;
esac

# source global definitions
if [[ -f /etc/bashrc ]]; then
    source /etc/bashrc
fi

# do not save the same commands
export HISTCONTROL=ignoreboth
# for setting history length and history file size
export HISTSIZE=1000
export HISTFILESIZE=2000
export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
export HISTIGNORE="&:bg:fg:ll:h"
export HISTTIMEFORMAT="$(echo -e ${BCyan})[%d/%m %H:%M:%S]$(echo -e ${NC}) "
export HISTCONTROL=ignoredups
export HOSTFILE=$HOME/.hosts    # Put a list of remote hosts in ~/.hosts


# OPTIONS
#---------------------------------------------------------------
# options for debugging
alias debug="set -o nounset; set -o xtrace"
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and,
# if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize
# the pattern "**" used in a pathname expansion context will
# match all files and zero or more dirs and subdirs.
shopt -s globstar
# enable programmable completion features
# you don't need to enable this, if it's already enabled in
# /etc/bash.bashrc and /etc/profile. just . /etc/bash.bashrc
if ! shopt -oq posix; then
    if [[ -f /usr/share/bash-completion/bash_completion ]]; then
        . /usr/share/bash-completion/bash_completion
    elif [[ -f /etc/bash_completion ]]; then
        . /etc/bash_completion
    fi
fi

# ALIAS
#---------------------------------------------------------------
if [[ -f ~/.bash/.bash_alias ]]; then
    source ~/.bash/.bash_alias
fi


# PS1
#---------------------------------------------------------------
if [[ -f ~/.bash/.bash_PS1 ]]; then
    source ~/.bash/.bash_PS1
fi



# FUNCTIONS
#---------------------------------------------------------------
if [[ -f ~/.bash/.bash_functions ]]; then
    source ~/.bash/.bash_functions
fi


# ADDITIONAL
#---------------------------------------------------------------
# for colorful tmux screen
if [[ $TERM == screen ]]; then
    TERM=xterm-256color
fi

# pyenv basic settings
if [[ -d $HOME/.pyenv/ ]]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi


