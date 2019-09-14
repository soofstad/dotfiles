# Fish shells equivalent to .bashrc

# Aliases
alias ll='ls -lah'
alias grep='grep --color=auto'

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
