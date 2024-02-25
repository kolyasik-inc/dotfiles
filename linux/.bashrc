#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# for copy except in bash
# Put the following to your .bashrc
# example1: mv !(fileOne) ~/path/newFolder
# example2: mv !(fileOne|fileTwo) ~/path/newFolder
shopt -s extglob

. $HOME/.profile
