# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ff="fastfetch"
alias xi="xbps-install"
alias vu="xbps-install -Su"
alias xs="xbps-query"
alias qf="qfetch"
alias vf="vfetch"
alias vim="nvim"
vf -d plan9 
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
(cat ~/.cache/wal/sequences &)

# .NET (installed for SPT server)
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$DOTNET_ROOT:$PATH"
