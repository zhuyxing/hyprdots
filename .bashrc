#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias exe="sudo chmod +x"
alias i="yay -S"
alias u="yay -Rns"
PS1='[\u@\h \W]\$ '
fastfetch
