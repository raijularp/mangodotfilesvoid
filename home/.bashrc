# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PF_ASCII="openbsd"
pfetch
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
(cat ~/.cache/wal/sequences &)
