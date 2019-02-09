# TODO on fresh install

## Delete and copy dotfiles

Note: Do this in RecoveryMode.  Plasma caches some files in memory and will overwrite you changes.

## Install some software

``` bash
apt-get update
apt-get install -y git fish elisa filelight keepassxc latte-dock libreoffice terminator python3.7 
```

## Visual Studio Code

https://code.visualstudio.com/Download

### Extensions

``` bash
EXTENSIONS=(
    'dsznajder.es7-react-js-snippets'
    'eamodio.gitlens'
    'ms-kubernetes-tools.vscode-kubernetes-tools'
    'ms-python.python'
    'ms-vscode.azurecli'
    'PeterJausovec.vscode-docker'
    'redhat.vscode-yaml' 'rogalmic.bash-debug'
    'xabikos.JavaScriptSnippets'
)

for i in "${EXTENSIONS[@]}"; do
  code --install-extension $i
done
```

## Jetbrains Toolbox

```bash
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

```bash
add-apt-repository ppa:nextcloud-devs/client
apt-get update
apt-get install nextcloud-client
```

## Lutris

https://lutris.net/downloads/

## Nvidia drivers ppa

```bash
add-apt-repository ppa:graphics-drivers/ppa
```

See here for latest drivers:  
https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa

## Google Chrome

```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
apt install -y ./chrome.deb
```

## Steam

```bash
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
apt install -y ./steam.deb
```

## Tuxguitar

```bash
apt install -y tuxguitar tuxguitar-alsa tuxguitar-jsa tuxguitar-oss 
```

## Some Kwin Desktop Effects I like

* Wobbly Windows
* Magic Lamp

## Consider these settings

* Power
* Sleep
* Screen Timeout
* Autostart(services)
* Login Screen
* File Indexer (Baloo)
* Update Policy
* Desktop Theme
