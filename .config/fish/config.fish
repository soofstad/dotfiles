# Fish shells equivalent to .bashrc

# Aliases
alias ll='ls -lah'
alias grep='grep --color=auto'

# Environment Variables
# U = universal, x = export
set MY_VAR my value
set -Ux PIPENV_VENV_IN_PROJECT 1
set -Ux PATH /usr/local/bin/go/bin $PATH
