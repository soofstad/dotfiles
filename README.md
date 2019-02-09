# TODO on fresh install
## Delete and copy dotfiles

## Install some software
```
apt-get update
apt-get install -y git fish elisa filelight keepassxc latte-dock libreoffice terminator python3.7 
```

## Visual Studio Code
https://code.visualstudio.com/Download
## Jetbrains Toolbox
```
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.11.4269.tar.gz -O toolbox.tar.gz
tar -xvzf toolbox.tar.gz
if [ ! -d "~/Apps" ]; then
    mkdir ~/Apps
fi
mv jetbrains-toolbox* ~/Apps/
```
## Vivaldi
https://vivaldi.com/download/

## Nextcloud
```
add-apt-repository ppa:nextcloud-devs/client
apt-get update
apt-get install nextcloud-client
```
## Lutris
https://lutris.net/downloads/

## Nvidia drivers ppa
```
add-apt-repository ppa:graphics-drivers/ppa
```
See here for latest drivers:  
https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa
## Google Chrome
```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
apt install -y ./chrome.deb
```

## Steam
```
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
apt install -y ./steam.deb
```
## Tuxguitar
```
apt install -y tuxguitar tuxguitar-alsa tuxguitar-jsa tuxguitar-oss 
```



