#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# Forces XDG path
alias startx='startx "$XDG_CONFIG_HOME/X11/xinitrc"'
# Fuzzy finds directories and symlinks into them
alias fcd='cd "$(find -type d,l | fzf)"'

PS1='[\u@\h \W]\$ '

if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi
