[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PATH=/home/mirakui/.gem/ruby/2.3.0/bin:$PATH
EDITOR=/usr/bin/vim

alias vi=vim
alias st='git status'
alias co='git status'
alias st='git status'
alias br='git branch'
alias co='git checkout'
alias gg='git grep -n -E'
alias gp='git pull --rebase origin master'
alias gpp='git pull --rebase origin master && git push origin master'
alias ls='ls -lahFG'
alias be='bundle exec'
