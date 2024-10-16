#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#
# If I wanted to have git branch name in bash prompt manually
#
#parse_git_branch() {
#	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#PS1="[\u@\h \W]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\$ "
#

#
# Original bash prompt
#
#PS1='[\u@\h \W]\$ '
#

# SSH agent (needed to verify to sites like Bitbucket
eval $(ssh-agent)

#
# Using bash-git-prompt
# https://github.com/magicmonty/bash-git-prompt
#
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
	# Set config variables first
	GIT_PROMPT_ONLY_IN_REPO=1

   # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
   # GIT_PROMPT_IGNORE_SUBMODULES=1 # uncomment to avoid searching for changed files in submodules
   # GIT_PROMPT_WITH_VIRTUAL_ENV=0 # uncomment to avoid setting virtual environment infos for node/python/conda environments

   # GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
   # GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files

   # GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

   # GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

   # GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
   # GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

   # as last entry source the gitprompt script
   # GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
   # GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
   # GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
   source $HOME/.bash-git-prompt/gitprompt.sh
fi

# Up/Down Arrow searches in history to complete current command
if [[ $- == *i* ]]
then
	bind '"\e[A": history-search-backward'
	bind '"\e[B": history-search-forward'
fi

# editor
export EDITOR=vim

# for gem executables to work
PATH=$PATH:~/.gem/ruby/2.0.0/bin

# for bundler
#export GEM_HOME=~/.gem/ruby/2.0.0

# more PATH
# for jupyter
PATH=$PATH:~/.local/bin

# for asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#
# Aliases
#

alias ls='ls --color=auto'
alias vi=vim
alias nv=nvim
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias ctags_ruby='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
alias st='hg st'

#
# Aliases for git
#
alias gst="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gpr="git pull --rebase"
alias gps="git push"
alias gx="git difftool -t xxdiff"
