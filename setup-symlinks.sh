#! /usr/bin/bash
set -euo pipefail

# Local folder to the dotfiles repo (input argument $1)
DP="${1:-"/home/$(whoami)/git/dotfiles/"}"
echo "Setting up symlinks from '/home/$(whoami)/' to '${DP}'"

TO_LINK=(
    ".config/Code/User/keybindings.json"
    ".config/Code/User/settings.json"
    ".config/fish"
    ".config/micro"
    ".config/pypoetry"
    ".config/zim"
    ".config/keepassxc"
    ".local/share/konsole")

echo "----------------------------"
for folder in "${TO_LINK[@]}"; do
    TO="$DP$folder"
    FROM="/home/$(whoami)/$folder"

    # Make sure the path to symlink exists
    mkdir --parents $(dirname $FROM)

    if [[ -e $FROM ]]; then
        echo "The file '$FROM' already exists."
        echo -n "Overwrite with symlink? [y/n]: "
        read confirmation

        if [[ $confirmation == "y" ]]; then
            rm -rf $FROM
        else
            echo "Skipping..."
            echo "----------------------------"
            continue
        fi
    fi
    ln --symbolic $TO $FROM
    echo "Created symlink: $FROM ---> $TO"
    echo "----------------------------"
done
