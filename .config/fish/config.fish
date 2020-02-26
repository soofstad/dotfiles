# Fish shells equivalent to .bashrc

# Aliases
alias ll='ls -lah'
alias grep='grep --color=auto'

# Key-bindings
# ctrl+left
bind [5D backward-word
# ctrl+right
bind [5C forward-word

# Environment Variables
# U = universal, x = export, g = global
set -gx PIPENV_VENV_IN_PROJECT 1
set -gx PATH $PATH /usr/local/bin/go/bin
# Unset the greeting
set fish_greeting

# Pyenv
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PATH $PYENV_ROOT/bin
source (pyenv init - | psub)
