# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

# Git Prompt
source ~/.config/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Prompt
#export PS1="\[\033[38;5;10m\]\u@\h:\[$(tput sgr0)\]\[\033[38;5;75m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
export PS1='\[\033[38;5;10m\]\u@\h:\[$(tput sgr0)\]\[\033[38;5;75m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;10m\]$(__git_ps1 " (%s)") $\[$(tput sgr0)\] \[$(tput sgr0)\]'

# GOLANG
export GOROOT=/opt/tools/go
export GOPATH=~/projects/go

# GOPASS
GOPASS=/opt/tools/gopass

# NodeJS
NODEJS=/opt/tools/node

export PATH=$PATH:${GOROOT}/bin:$GOPATH:${GOPASS}:${NODEJS}/bin

