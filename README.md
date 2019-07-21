# TODO on fresh install

## Install some software

``` bash
apt-get update
apt-get install -y git fish filelight keepassxc latte-dock libreoffice terminator zim tree
```

## Visual Studio Code

<https://code.visualstudio.com/Download>

### Extensions

``` bash
EXTENSIONS=(
  'adamvoss.vscode-languagetool'
  'AlanWalk.markdown-toc'
  'anseki.vscode-color'
  'bajdzis.vscode-database'
  'bbenoist.vagrant'
  'daiyy.quick-html-previewer'
  'DavidAnson.vscode-markdownlint'
  'DotJoshJohnson.xml'
  'dsznajder.es7-react-js-snippets'
  'eamodio.gitlens'
  'esbenp.prettier-vscode'
  'felipecaputo.git-project-manager'
  'GrapeCity.gc-excelviewer'
  'ipedrazas.kubernetes-snippets'
  'jpoissonnier.vscode-styled-components'
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
  'richie5um2.vscode-sort-json'
  'rogalmic.bash-debug'
  'shakram02.bash-beautify'
  'shanoor.vscode-nginx'
  'skyapps.fish-vscode'
  'tht13.html-preview-vscode'
  'timonwong.shellcheck'
  'wesbos.theme-cobalt2'
  'xabikos.JavaScriptSnippets'
  'VisualStudioExptTeam.vscodeintellicode'
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

## MusicBee - Wine

<https://getmusicbee.com/forum/index.php?topic=17074.msg157355#msg157355>  
Note: 32-bit wine-prefix

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

## Plasma window decoration

<https://github.com/ishovkun/SierraBreeze>

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
