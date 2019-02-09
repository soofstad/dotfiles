#! /bin/bash

# Test for Debian-based distro
if [ -f /etc/lsb-release ]; then
    echo "Detected Debian-based distro. Continuing..."
else
    echo "This does not seem to be a Debian-based disto. Exiting..."
    exit 1
fi

# Must be run as root
if [ $(id -u) != 0 ]; then
    echo "Must be run as root. Exiting..."
    exit 1
fi
# Google Chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
#apt install -y ./chrome.deb

# Jetbrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.11.4269.tar.gz -O toolbox.tar.gz
tar -xvzf toolbox.tar.gz
if [ ! -d "~/Apps" ]; then
    mkdir ~/Apps
fi
mv jetbrains-toolbox* ~/Apps/

# Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
apt install -y ./steam.deb

# Vivaldi
#wget https://downloads.vivaldi.com/stable/vivaldi-stable_2.1.1337.36-1_amd64.deb -O vivaldi.deb
#apt install -y ./vivaldi.deb

# Nextcloud
add-apt-repository ppa:nextcloud-devs/client-beta

# Lutris
ver=$(lsb_release -sr); if [ $ver != "18.10" -a $ver != "18.04" -a $ver != "16.04" ]; then ver=18.04; fi
echo "deb http://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
#wget -q https://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/Release.key -O- | sudo apt-key add -

## Other Lutris stuff (Battle.net mainly)
apt install -y libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libsqlite3-0:i386

## Wine
#wget -nc https://dl.winehq.org/wine-builds/Release.key
apt-key add Release.key
apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

## DXVK
dpkg --add-architecture i386
apt install -y libvulkan1 libvulkan1:i386 

# Nvidia drivers ppa
add-apt-repository ppa:graphics-drivers/ppa

# 
apt-get update
apt-get install -y lutris git fish elisa filelight keepassxc latte-dock libreoffice terminator python3.7 tuxguitar tuxguitar-alsa tuxguitar-jsa tuxguitar-oss nextcloud-client
apt-get install -y --install-recommends winehq-staging

apt autoremove

echo -e "\n###############\nNOTICE: No Nvidia driver is installed. Only repo added."
