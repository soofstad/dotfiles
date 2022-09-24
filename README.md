# Collection of things I often do in a fresh minimal install

## Some packages

``` bash
sudo dnf install -y git \
     fish \
     curl \
     filelight \
     keepassxc \
     libreoffice \
     Zim \
     tree \
     yarnpkg \
     htop \
     nmap \
     vim \
     nethogs \
     micro
```

## Visual Studio Code

<https://code.visualstudio.com/Download>

``` bash
EXTENSIONS=(
  'esbenp.prettier-vscode'
  'felipecaputo.git-project-manager'
  'k--kato.intellij-idea-keybindings'
  'ms-python.python'
  'ms-python.vscode-pylance'
  'ms-vscode.azurecli',
  'ms-azuretools.vscode-bicep'
  'shanoor.vscode-nginx'
  'skyapps.fish-vscode'
  'wesbos.theme-cobalt2'
)

for i in "${EXTENSIONS[@]}"; do
  code --install-extension $i
done
```

## Pyenv

`curl https://pyenv.run | bash`

To be able to compile python versions locally, we require some libraries;

```bash
sudo dnf install make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel
```

Install a python version with;  
`pyenv install 3.10.7`  

Set is a global standard with:  
`pyenv global 3.10.7`

You can then install Poetry in the versions venv with pip;  
`pip install poetry`
