# TODO on fresh install

## Delete and copy dotfiles

Note: Do this in RecoveryMode.  Plasma caches some files in memory and will overwrite you changes.
Remember to set correct owner of files.

## Install some software

``` bash
apt-get update
apt-get install -y git fish elisa filelight keepassxc latte-dock libreoffice terminator python3.7 zim
```

## Visual Studio Code

https://code.visualstudio.com/Download

### Extensions

``` bash
EXTENSIONS=(
  'esbenp.prettier-vscode'
  'adamvoss.vscode-languagetool'
  'AlanWalk.markdown-toc'
  'bajdzis.vscode-database'
  'bbenoist.vagrant'
  'daiyy.quick-html-previewer'
  'dsznajder.es7-react-js-snippets'
  'eamodio.gitlens'
  'felipecaputo.git-project-manager'
  'GrapeCity.gc-excelviewer'
  'ipedrazas.kubernetes-snippets'
  'jpogran.puppet-vscode'
  'k--kato.intellij-idea-keybindings'
  'michelemelluso.gitignore'
  'mikestead.dotenv'
  'ms-kubernetes-tools.vscode-kubernetes-tools'
  'ms-mssql.mssql'
  'ms-python.python'
  'ms-vscode.azurecli'
  'PeterJausovec.vscode-docker'
  'redhat.vscode-yaml'
  'rogalmic.bash-debug'
  'shakram02.bash-beautify'
  'shanoor.vscode-nginx'
  'skyapps.fish-vscode'
  'tht13.html-preview-vscode'
  'timonwong.shellcheck'
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

The combination nvidia+kde+HiDPI displays, require the Font Setting _Force Fonts DPI: 96_ to be set.

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

## KDE Plasma PPA

```bash
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt update
sudo apt full-upgrade
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
