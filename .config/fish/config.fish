# Fish shells equivalent to .bashrc

# Aliases
alias ll='ls -lah'
alias grep='grep --color=auto'
alias ipi='ip -br -c addr show'

# Key-bindings
# ctrl+left
bind [5D backward-word
# ctrl+right
bind [5C forward-word

# Environment Variables
# U = universal, x = export, g = global
set -gx PIPENV_VENV_IN_PROJECT 1
set -gx PATH $PATH /usr/local/bin/go/bin
set -gx DOCKER_BUILDKIT 1
set -gx COMPOSE_DOCKER_CLI_BUILD 1

# Unset the greeting
set fish_greeting

# Pyenv
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PATH $PYENV_ROOT/bin
source (pyenv init - | psub)

# Dotnet
set -gx DOTNET_CLI_TELEMETRY_OPTOUT 1

# Pulumi
set -gx PATH $PATH $HOME/.pulumi/bin
