#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Up/Down Arrow searches in history to complete current command
if [[ $- == *i* ]]
then
	bind '"\e[A": history-search-backward'
	bind '"\e[B": history-search-forward'
fi

#################
# aliases start
################

# general
alias ls='ls --color=auto'
alias vi=vim
alias grep='grep --color=auto'
alias rm='rm -i'

# aliases for git
alias gitst='git status'
alias gitd='git diff'
alias gitc='git commit'

#################
# aliases end
################

# for asdf version manager
. /opt/asdf-vm/asdf.sh
. /opt/asdf-vm/completions/asdf.bash
