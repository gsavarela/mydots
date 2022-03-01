#
# ~/.bash_profile
#
# XDG paths
# Where user-specific configurations should be written (analogous /etc/)
export XDG_CONFIG_HOME=$HOME/.config
# Where user-specific non-essentials should be written (analogous /var/cache)
export XDG_CACHE_HOME=$HOME/.cache
# Where user-specific data-files should be written (analogous /usr/share)
export XDG_DATA_HOME=$HOME/.local/share
# Where user-specific non-essential runtime files and other file objects
# (such as sockets, named pipes, ...) should be stored
export XDG_RUNTIME_DIR=$HOME/.local/proc

export PYENV_ROOT="$XDG_DATA_HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
[[ -f ~/.bashrc ]] && . ~/.bashrc

# lf varibles
export EDITOR='vim'
export READER='zathura'
export TERMINAL='st'

# source
source "$XDG_CONFIG_HOME/profile"

# Disable files
export LESSHISTFILE=-

# Hardcoded paths
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
# export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export X11_CONFIG_HOME="$XDG_CONFIG_HOME"/X11
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XCOMPOSEFILE="$X11_CONFIG_HOME"/xcompose
export XCOMPOSECACHE="$XDG_CACHE_HOME"/X11/xcompose
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

# Allows for separate config files for vim and neovim
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.lua" | so $MYVIMRC'
export ILURL_HOME="$XDG_REPOSITORIES_DIR/ilu/ilurl"
export SUMO_HOME="$HOME/Repos/sumo"
export BIN_HOME="$HOME/.local/bin"
export PATH="$PATH:$BIN_HOME:$SUMO_HOME"


 
