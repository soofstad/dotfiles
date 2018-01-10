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

# Set super+y as new-terminal shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'new-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'terminator'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>y'
