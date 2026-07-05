# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias qf="qfetch"
alias vf="vfetch"
alias vim="nvim"
vf -d parabola 
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
(cat ~/.cache/wal/sequences &)
