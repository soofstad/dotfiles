#! /bin/bash
# Setup my linux environment

# Environments
NEW_SHELL="/usr/bin/fish"

# Set default shell

if [ ! $(echo $SHELL) == "$NEW_SHELL" ]; then
    echo "Enter password for $USER to set new default shell"
    chsh -s $NEW_SHELL
else
    echo "Fish is already your default shell"
fi

if [ ! -d ~/.config/ ]; then
    mkdir -v ~/.config
fi

cp -rv ./terminator ~/.config/
cp -rv ./fish ~/.config/
