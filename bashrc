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

# for gem executables to work
PATH=$PATH:~/.gem/ruby/2.0.0/bin

# for bundler
#export GEM_HOME=~/.gem/ruby/2.0.0

#
# Aliases
#

alias ls='ls --color=auto'
alias vi=vim
alias grep='grep --color=auto'
alias rm='rm -i'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
