#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $XDG_CONFIG_HOME/user-dirs.dirs
alias ls='ls --color=auto'
# Forces XDG path
alias startx='startx "$XDG_CONFIG_HOME/X11/xinitrc"'
# Fuzzy finds directories and symlinks into them
alias fcd='cd "$(find -type d,l | fzf)"'

# Directory resolution
alias C='cd $XDG_DOCUMENTS_DIR'
alias D='cd $XDG_DOWNLOAD_DIR'
alias L='cd "$HOME/Library"'
alias M='cd $XDG_MUSIC_DIR'
alias P='cd $XDG_PICTURES_DIR'
alias R='cd $XDG_REPOSITORIES_DIR'
alias U='cd $XDG_PUBLICSHARE_DIR'

PS1='[\u@\h \W]\$ '

if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi
