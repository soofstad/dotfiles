# Collection of things I often do in a fresh minimal install

- [Some packages](#some-packages)
- [Visual Studio Code](#visual-studio-code)
- [Jetbrains Toolbox](#jetbrains-toolbox)
- [Pyenv](#pyenv)
- [Node](#node)
- [Yarn](#yarn)
- [Vivaldi](#vivaldi)
- [Lutris](#lutris)
- [MusicBee - Wine](#musicbee---wine)
- [Nvidia drivers ppa](#nvidia-drivers-ppa)
- [Google Chrome](#google-chrome)
- [Steam](#steam)
- [Tuxguitar](#tuxguitar)
- [KDE Plasma PPA](#kde-plasma-ppa)
- [Plasma window decoration](#plasma-window-decoration)
- [Some Kwin Desktop Effects I like](#some-kwin-desktop-effects-i-like)
- [Consider these settings](#consider-these-settings)

## Some packages

``` bash
apt-get update
apt-get install -y git \
     fish \
     curl \
     wireguard \
     docker.io \
     docker-compose \
     nextcloud-desktop \
     filelight \
     keepassxc \
     latte-dock \
     libreoffice \
     terminator \
     zim \
     tree \
     htop \
     nmap \
     vim \
     nethogs \
     nfs-common

snap install insomnia
```

## Visual Studio Code

<https://code.visualstudio.com/Download>

``` bash
EXTENSIONS=(
  'adamvoss.vscode-languagetool'
  'bajdzis.vscode-database'
  'anseki.vscode-color'
  'bbenoist.vagrant'
  'DavidAnson.vscode-markdownlint'
  'DotJoshJohnson.xml'
  'dsznajder.es7-react-js-snippets'
  'eamodio.gitlens'
  'esbenp.prettier-vscode'
  'felipecaputo.git-project-manager'
  'GrapeCity.gc-excelviewer'
  'jpogran.puppet-vscode'
  'jpoissonnier.vscode-styled-components'
  'k--kato.intellij-idea-keybindings'
  'michelemelluso.gitignore'
  'mikestead.dotenv'
  'ms-kubernetes-tools.vscode-kubernetes-tools'
  'ms-mssql.mssql'
  'ms-python.python'
  'ms-vscode.azurecli'
  'redhat.vscode-yaml'
  'richie5um2.vscode-sort-json'
  'rogalmic.bash-debug'
  'shakram02.bash-beautify'
  'shanoor.vscode-nginx'
  'skyapps.fish-vscode'
  'tht13.html-preview-vscode'
  'timonwong.shellcheck'
  'VisualStudioExptTeam.vscodeintellicode'
  'wesbos.theme-cobalt2'
  'yzhang.markdown-all-in-one'
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

## Pyenv

`curl https://pyenv.run | bash`

To be able to compile python versions locally, we require some libraries;

```bash
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
```

Install a python version with;  
`pyenv install 3.7.4`  

Set is a global standard with:  
`pyenv global 3.7.4`

You can then install Poetry in the versions venv with pip;  
`pip install poetry`

## Node

```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

## Yarn

```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn
```

## OWASP Zap

<https://software.opensuse.org/download.html?project=home%3Acabelo&package=owasp-zap>

## Vivaldi

<https://vivaldi.com/download/>

## Lutris

<https://lutris.net/downloads/>

## MusicBee - Wine

<https://getmusicbee.com/forum/index.php?topic=17074.msg157355#msg157355>  
Note: 32-bit wine-prefix

## Mesa drivers ppa (AMDGPU)
This is the steam experimental which builds regulary from Git, and contains their own shader compiler(ACO)
<https://steamcommunity.com/app/221410/discussions/0/1640915206474070669/>

## Nvidia drivers ppa

```bash
add-apt-repository ppa:graphics-drivers/ppa
```

See here for latest drivers:
<https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa>

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

[<https://github.com/kupiqu/SierraBreezeEnhanced>](https://github.com/kupiqu/SierraBreezeEnhanced)

## Some Kwin Desktop Effects I like

- Wobbly Windows
- Magic Lamp

## Consider these settings

- Power
- Sleep
- Screen Timeout
- Autostart(services)
- Login Screen
- File Indexer (Baloo)
- Update Policy
- Desktop Theme
