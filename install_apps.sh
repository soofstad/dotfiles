#! /bin/sh
# Install some commonly used programs
APPS="git terminator fish vim"

if [ ! -z $(which yum) ]; then
    yum install $APPS
elif [ ! -z $(which apt) ]; then
    apt install $APPS
else
    echo "Could not find a usable package manager..."
    echo "No packages installed...exiting"
    exit 1
fi

exit 0
